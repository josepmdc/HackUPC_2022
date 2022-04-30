from django.urls import path

from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('home', views.formBike, name='home'),
   # path('main', views.formBike, name='main'),
    path('login', views.Login, name='login'),
    path('logout', views.user_logout, name='logout'),
    path('user_login', views.user_login, name='user_login'),
    path('explanation', views.explanation, name='explanation'),
    path('registrar', views.Register, name='registrar'),
]
