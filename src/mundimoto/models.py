from django.db import models
from django.contrib.auth.models import User
# Create your models here.

class FindMotorbike(models.Model):
    Origin = models.CharField(blank=True, max_length=250)
    Destination = models.CharField(blank=True, max_length=250)
    Fuel = models.CharField(blank=True, max_length=10000)

class Brands(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=50)


class Versions(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=255)
    year = models.IntegerField()
    fuel = models.IntegerField()
    price = models.IntegerField()
    brand = models.ForeignKey(Brands, on_delete=models.CASCADE)


class Clients(models.Model):
    contact_id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=50)
    surname = models.CharField(max_length=50)
    email = models.CharField(max_length=50)
    dni = models.CharField(max_length=10)
    credit_card = models.BigIntegerField()


class UserProfile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)

    def __str__(self):
        return self.user.username


class Logs(models.Model):
    contact_id = models.ForeignKey(Clients, on_delete=models.CASCADE)
    bike_id = models.ForeignKey(Versions, on_delete=models.CASCADE)
    created_at = models.DateTimeField(auto_now_add=True)
    intial_longitude = models.FloatField()
    initial_latitude = models.FloatField()
    final_longitude = models.FloatField()
    final_latitude = models.FloatField()
    price = models.IntegerField()
    final_at = models.DateTimeField()
    total_km = models.FloatField()
    fuel_level = models.FloatField()

class RangeBike(models.Model):
    id = models.IntegerField(primary_key=True)
    cat = models.CharField(max_length=255)
    low = models.IntegerField()
    high = models.IntegerField()



