from django.urls import path

from .views import ContactView, CourseView, IndexView, SiteErrorView

# AboutView,

app_name = 'main'

urlpatterns = [
    path('', IndexView.as_view(), name='home'),
    path('index/', IndexView.as_view(), name='index'),
    path('course/', CourseView.as_view(), name='course'),
    path('contact/', ContactView.as_view(), name='contact'),
    # path('profile/', ProfileView.as_view(), name='profile'),
    path('site_error/', SiteErrorView.as_view(), name='site_error'),
]
