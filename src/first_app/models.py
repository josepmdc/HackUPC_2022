from django.db import models

# Create your models here.
class UserProfile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)

    def __str__(self):
        return self.user.username

class Contact(models.Model):

    name =models.CharField(blank=True, max_length=250)
    email = models.EmailField(blank=True)
    message =models.CharField(blank=True, max_length=10000)
