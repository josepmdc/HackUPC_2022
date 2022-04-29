from django.shortcuts import render



from HackMundiMoto import settings
from . import forms
#from first_app.forms import UserForm, ContactForm
from django.urls import reverse
from django.contrib.auth.decorators import login_required
from django.http import HttpResponse, HttpResponseRedirect
from django.contrib.auth import authenticate, login, logout
from django.contrib import messages
import urllib
import json

# Create your views here.
@login_required
def building(request):
    return render(request, 'building.html', {})


@login_required
def user_logout(request):
    logout(request)
    return HttpResponseRedirect(reverse('index'))


def index(request):
    user_form_ = forms.UserForm()

    registered = False

    if request.POST:

        user_form_ = UserForm(data=request.POST)



        if user_form_.is_valid():
            ''' Begin reCAPTCHA validation '''
            recaptcha_response = request.POST.get('g-recaptcha-response')
            url = 'https://www.google.com/recaptcha/api/siteverify'
            values = {
                'secret': settings.GOOGLE_RECAPTCHA_SECRET_KEY,
                'response': recaptcha_response
            }
            data = urllib.parse.urlencode(values).encode()
            req = urllib.request.Request(url, data=data)
            response = urllib.request.urlopen(req)
            result = json.loads(response.read().decode())
            ''' End reCAPTCHA validation '''

            if result['success']:
                user = user_form_.save()
                user.set_password(user.password)

                user.save()
                registered = True
                login(request, user)

                messages.success(request, 'New comment added with success!')
                return render(request, 'building.html', {})
            else:
                messages.error(request, 'Invalid reCAPTCHA. Please try again.')

        else:
            print("ERROR")
            messages.error(request, "Username already Exists")


    else:
        print(request)

    return render(request, "home.html", {'user_form': user_form_, 'registered': registered})



def faqs(request):
    return render(request, "faqs.html")


def Contact_question(request):
    contact_form = forms.ContactForm()
    if request.POST:
        contact_form = ContactForm(data=request.POST)
        if contact_form.is_valid():
            ''' Begin reCAPTCHA validation '''
            recaptcha_response = request.POST.get('g-recaptcha-response')
            url = 'https://www.google.com/recaptcha/api/siteverify'
            values = {
                'secret': settings.GOOGLE_RECAPTCHA_SECRET_KEY,
                'response': recaptcha_response
            }
            data = urllib.parse.urlencode(values).encode()
            req = urllib.request.Request(url, data=data)
            response = urllib.request.urlopen(req)
            result = json.loads(response.read().decode())
            ''' End reCAPTCHA validation '''

            if result['success']:
                contact = contact_form.save()
                messages.success(request, 'New comment added with success!')
            else:
                messages.error(request, 'Invalid reCAPTCHA. Please try again.')




        return render(request, "home.html",{})

def user_login(request):
    if request.POST:
        username = request.POST.get('username')
        password = request.POST.get('password')
        user = authenticate(username=username, password=password)
        print(username, password)
        if user:
            if user.is_active:
                login(request, user)
                return HttpResponseRedirect(reverse('building'))
            else:
                return HttpResponse("ACCOUNT NOT ACTIVE")
        else:
            print("someone tried to enter and failed")
            return HttpResponse("invalid login details")
    else:
        return render(request, 'home.html', {})
