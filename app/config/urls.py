"""config URL Configuration for the project
"""
from django.contrib import admin
from django.urls import include, path
from django.contrib.auth import views as auth_views
from django.urls import include


urlpatterns = [
    path('admin/', admin.site.urls),
    path('__debug__/', include('debug_toolbar.urls')),
    path('diary/', include('diary.urls')),
    path('main/', include('main.urls')),
    path('accounts/', include('django.contrib.auth.urls')),
    path('accounts/logout/', auth_views.LogoutView.as_view(next_page='main:index'), name='logout'),
]
