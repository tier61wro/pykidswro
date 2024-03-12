from django.contrib import admin

# Register your models here.
from django.contrib import admin
from .models import Lesson

class LessonAdmin(admin.ModelAdmin):
    list_display = ('title', 'content', 'order')  # Пример отображения полей модели

admin.site.register(Lesson, LessonAdmin)
