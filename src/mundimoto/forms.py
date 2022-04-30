from django import forms
from django.contrib.auth.models import  User
from mundimoto.models import FindMotorbike


class FindMotorbike(forms.ModelForm):
    class Meta():
        model = FindMotorbike
        fields = ['Origin','Destination','Fuel',]