from django.contrib import admin
from django.urls import include, path

import mundimoto

urlpatterns = [
    path('', include('mundimoto.urls')),
    path('admin/', admin.site.urls),
]
handler404 = mundimoto.views.handle_not_found