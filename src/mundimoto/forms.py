from django import forms
from django.contrib.auth.models import User
from mundimoto.models import FindMotorbike


class FindMotorbike(forms.ModelForm):
    class Meta():
        model = FindMotorbike
        fields = ('Origin', 'Destination')


class UserForm(forms.ModelForm):
    password = forms.CharField(widget=forms.PasswordInput())

    class Meta():
        model = User

        fields = ('username', 'first_name', 'email', 'password')
        help_texts = {
            'username': None,

        }
