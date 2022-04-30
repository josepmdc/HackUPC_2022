from django.db import models

# Create your models here.
class FindMotorbike(models.Model):

    Origin =models.CharField(blank=True, max_length=250)
    Destination = models.CharField(blank=True, max_length=250)
    Fuel =models.CharField(blank=True, max_length=10000)

