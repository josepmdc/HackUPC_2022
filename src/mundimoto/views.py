from django.conf import settings
from django.shortcuts import redirect, render
import requests
import stripe
from . import forms
from mundimoto.models import Brands, Clients, FindMotorbike, Versions
from django.urls import reverse
from django.contrib.auth.decorators import login_required
from django.http import HttpResponse, HttpResponseRedirect, JsonResponse
from django.contrib.auth import authenticate, login, logout
from django.contrib import messages
from django.views.decorators.csrf import csrf_exempt # new
import logging
from django.contrib.auth.models import User  # new
import urllib.parse
from mundimoto.models import StripeCustomer  # new

from django.db import connection

# Create your views here.

@login_required
def user_logout(request):
    logout(request)
    return HttpResponseRedirect(reverse('home'))

# new
@csrf_exempt
def stripe_config(request):
    if request.method == 'GET':
        stripe_config = {'publicKey': settings.STRIPE_PUBLISHABLE_KEY}
        return JsonResponse(stripe_config, safe=False)
    
@csrf_exempt
def create_checkout_session(request):
    if request.method == 'GET':
        domain_url = 'http://localhost:8000/'
        stripe.api_key = settings.STRIPE_SECRET_KEY
        try:
            checkout_session = stripe.checkout.Session.create(
                client_reference_id=request.user.id if request.user.is_authenticated else None,
                success_url= 'http://localhost:8000/login',
                cancel_url=domain_url + 'cancel/',
                payment_method_types=['card'],
                mode='subscription',
                line_items=[
                    {
                        'price': settings.STRIPE_PRICE_ID,
                        'quantity': 1,
                    }
                ]
            )

            return redirect(checkout_session.url,code=303)
            #return JsonResponse({'sessionId': checkout_session['id']})
        except Exception as e:
            return JsonResponse({'error': str(e)})


@login_required
def success(request):
    return render(request, 'success.html')


@login_required
def cancel(request):
    return render(request, 'cancel.html')
    
def handle_not_found(request,exception):
    return render(request,'error.html')

@csrf_exempt
def stripe_webhook(request):
    stripe.api_key = settings.STRIPE_SECRET_KEY
    endpoint_secret = settings.STRIPE_ENDPOINT_SECRET
    payload = request.body
    sig_header = request.META['HTTP_STRIPE_SIGNATURE']
    event = None

    try:
        event = stripe.Webhook.construct_event(
            payload, sig_header, endpoint_secret
        )
    except ValueError as e:
        # Invalid payload
        return HttpResponse(status=400)
    except stripe.error.SignatureVerificationError as e:
        # Invalid signature
        return HttpResponse(status=400)

    # Handle the checkout.session.completed event
    if event['type'] == 'checkout.session.completed':
        session = event['data']['object']

        # Fetch all the required data from session
        client_reference_id = session.get('client_reference_id')
        stripe_customer_id = session.get('customer')
        stripe_subscription_id = session.get('subscription')

        # Get the user and create a new StripeCustomer
        user = User.objects.get(id=client_reference_id)
        StripeCustomer.objects.create(
            user=user,
            stripeCustomerId=stripe_customer_id,
            stripeSubscriptionId=stripe_subscription_id,
        )
        print(user.username + ' just subscribed.')

    return HttpResponse(reverse('success'))
    

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



def formBike(request):
    find_form = forms.FindMotorbike()

    if request.POST:
        find_form = forms.FindMotorbike(data=request.POST)
    if find_form.is_valid():
        address = find_form['Origin'].value()
        url = 'https://nominatim.openstreetmap.org/search/' + urllib.parse.quote(address) +'?format=json'
        response = requests.get(url).json()


        address = find_form['Destination'].value()
        url = 'https://nominatim.openstreetmap.org/search/' + urllib.parse.quote(address) +'?format=json'
        response2 = requests.get(url).json()

        #FindMotorbike.objects.raw('INSERT INTO mundimoto_findmotorbike column(lat1, lon1,lat2, lon2) VALUES(response[0]["lat"],response[0]["lon"],response2[0]["lat"], response2[0]["lon"] )')

        find_form.save()
    brands = Brands.objects.filter(name="BMW")
    bikes = Versions.objects.filter()
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
            return  redirect('/create-checkout-session/')
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
