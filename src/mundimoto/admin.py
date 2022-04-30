from django.contrib import admin
from mundimoto.models import UserProfile
from mundimoto.models import FindMotorbike
from mundimoto.models import StripeCustomer
# Register your models here.
admin.site.register(FindMotorbike)
admin.site.register(StripeCustomer)