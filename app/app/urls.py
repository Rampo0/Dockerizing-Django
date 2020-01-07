from django.views.generic import TemplateView
from django.contrib import admin
from django.urls import path

urlpatterns = [
    path('',TemplateView.as_view(template_name='index.html')),
    path('admin/', admin.site.urls),
]
