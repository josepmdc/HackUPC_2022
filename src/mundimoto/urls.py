from django.urls import path

from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('home', views.formBike, name='home'),
   # path('main', views.formBike, name='main'),
    path('login', views.Login, name='login'),
    path('user_login', views.user_login, name='user_login'),
    path('registrar', views.Register, name='registrar'),
]
