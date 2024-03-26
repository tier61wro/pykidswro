from django.urls import path

from . import views

urlpatterns = [
    path('<int:lesson_order>/', views.lesson_view, name='lesson-detail'),
    path('lesson-access-denied/', views.lesson_access_denied_view, name='lesson_access_denied'),
]
