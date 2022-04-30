from django.db import models
from django.contrib.auth.models import User
# Create your models here.
class FindMotorbike(models.Model):

    Origin =models.CharField(blank=True, max_length=250)
    Destination = models.CharField(blank=True, max_length=250)
    Fuel =models.CharField(blank=True, max_length=10000)

class UserProfile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)

    def __str__(self):
        return self.user.username
