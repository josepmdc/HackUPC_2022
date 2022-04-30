from django.shortcuts import render

from mundimoto.models import Brands
from . import forms


def index(request):
    latest_question_list = ["1. asdf", "2. asdf", "3. asdf"]
    context = {
        'latest_question_list': latest_question_list,
    }
    return render(request, 'index.html', context)


def home(request):
    print(Brands.objects.all()[0].name)

    return render(request, 'home.html')


def formBike(request):
    find_form = forms.FindMotorbike()

    if request.POST:
        find_form = forms.FindMotorbike(data=request.POST)
    if find_form.is_valid():
        contact = find_form.save()

    return render(request, "home.html", {})
