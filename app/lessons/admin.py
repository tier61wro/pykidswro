# Register your models here.
from django.contrib import admin

from .models import Chapter, Lesson, UserLessonProgress


class LessonAdmin(admin.ModelAdmin):
    list_display = ('order', 'chapter_order', 'chapter', 'title', 'content')  # Пример отображения полей модели


admin.site.register(Lesson, LessonAdmin)


class UserLessonProgressAdmin(admin.ModelAdmin):
    list_display = ('user', 'lesson', 'completed')


admin.site.register(UserLessonProgress, UserLessonProgressAdmin)


class ChapterAdmin(admin.ModelAdmin):
    list_display = ('number', 'name')


admin.site.register(Chapter, ChapterAdmin)
