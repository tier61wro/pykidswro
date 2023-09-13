from django.urls import path
from .views import diary_entry_success, DiaryEntryView, DateListView

app_name = 'diary'

urlpatterns = [
    path('entry/', DiaryEntryView.as_view(), name='diary-entry'),
    # Добавляем путь с параметром для даты
    # path('entry/<slug:date>/', DiaryEntryView.as_view(), name='diary-entry-date'),
    path('entry/success/', diary_entry_success, name='diary-entry-success'),
    path('date-list/', DateListView.as_view(), name='date-list'),
]