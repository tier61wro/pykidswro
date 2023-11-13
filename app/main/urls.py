from django.urls import path
from .views import IndexView, ContactView, AboutView, CourseView

app_name = 'main'

urlpatterns = [
    path('index/', IndexView.as_view(), name='index'),
    path('about/', AboutView.as_view(), name='about'),
    path('course/', CourseView.as_view(), name='course'),
    path('contact/', ContactView.as_view(), name='contact'),
    # path('profile/', ProfileView.as_view(), name='profile'),
]