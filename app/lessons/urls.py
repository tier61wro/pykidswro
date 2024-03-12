from django.urls import path
from . import views

urlpatterns = [
    path('<int:lesson_order>/', views.lesson_view, name='lesson-detail'),
]
