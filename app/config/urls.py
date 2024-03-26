"""config URL Configuration for the project
"""
from django.contrib import admin
from django.contrib.auth import views as auth_views
from django.urls import include, path

from main.views import ProfileView

urlpatterns = [
    path('', include('main.urls')),
    path('admin/', admin.site.urls),
    path('__debug__/', include('debug_toolbar.urls')),
    path('diary/', include('diary.urls')),
    path('accounts/logout/', auth_views.LogoutView.as_view(next_page='main:index'), name='logout'),
    path('accounts/profile/', ProfileView.as_view(), name='profile'),
    path('accounts/', include('django.contrib.auth.urls')),
    path('lessons/', include('lessons.urls')),
]
