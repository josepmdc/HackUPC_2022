from django.shortcuts import render

from . import forms
from mundimoto.models import Brands, Versions
from django.urls import reverse
from django.contrib.auth.decorators import login_required
from django.http import HttpResponse, HttpResponseRedirect
from django.contrib.auth import authenticate, login, logout
from django.contrib import messages

import logging

# Create your views here.

@login_required
def user_logout(request):
    logout(request)
    return HttpResponseRedirect(reverse('home'))


    
def handle_not_found(request,exception):
    return render(request,'error.html')

    

def index(request):
    latest_question_list = ["1. asdf", "2. asdf", "3. asdf"]
    context = {
        'latest_question_list': latest_question_list,
    }
    return render(request, 'index.html', context)


def home(request):
    print(Brands.objects.all()[0].name)
    logger = logging.getLogger('django')

    logger.info('here goes your message')
    return render(request, 'home.html')

def explanation(request):
    return render(request, 'explanation.html')

    
def Login(request):

    return render(request, "Login.html")


def Login(request):
    return render(request, "login.html")


def formBike(request):
    find_form = forms.FindMotorbike()

    if request.POST:
        find_form = forms.FindMotorbike(data=request.POST)
    if find_form.is_valid():
        find_form.save()
    brands = Brands.objects.all()
    bikes = Versions.objects.all()
    return render(request, "home.html", {'form': find_form, 'brands': brands, 'bikes': bikes})


def Register(request):
    user_form_ = forms.UserForm()

    registered = False

    if request.POST:

        user_form_ = forms.UserForm(data=request.POST)
        if user_form_.is_valid():
            print("we are here ")
            user = user_form_.save()
            user.set_password(user.password)

            user.save()

            registered = True
            login(request, user)
            user.save()
            return render(request, 'Login.html', {})
        else:
            print("ERROR")
            messages.error(request, "Username already Exists")

    else:
        print(request)

    return render(request, "Registration.html", {'user_form': user_form_, 'registered': registered})


def user_login(request):
    if request.POST:
        username = request.POST.get('username')
        password = request.POST.get('password')
        user = authenticate(username=username, password=password)
        print(username, password)
        if user:
            if user.is_active:
                login(request, user)
                return HttpResponseRedirect(reverse('home'))
            else:
                return HttpResponse("ACCOUNT NOT ACTIVE")
        else:
            print("someone tried to enter and failed")
            return HttpResponse("invalid login details")
    else:
        return render(request, 'home.html', {})
