# Register your models here.
from django.contrib import admin
from django.template.defaultfilters import truncatechars  # or truncatewords

from .models import Chapter, Lesson, UserLessonProgress


class LessonAdmin(admin.ModelAdmin):
    list_display = ('order', 'chapter_order', 'chapter', 'title', 'short_content')

    # хак чтобы поле content не было слишком большим в админке
    def short_content(self, obj):
        return truncatechars(obj.content, 100)  # Обрезает содержимое до 100 символов

    # Заголовок столбца в админке
    short_content.short_description = 'Content'  # type: ignore[attr-defined]


admin.site.register(Lesson, LessonAdmin)


class UserLessonProgressAdmin(admin.ModelAdmin):
    list_display = ('user', 'lesson_number', 'lesson', 'completed')

    def lesson_number(self, obj):
        return obj.lesson.order

    lesson_number.short_description = 'Lesson Number'


admin.site.register(UserLessonProgress, UserLessonProgressAdmin)


class ChapterAdmin(admin.ModelAdmin):
    list_display = ('number', 'name')


admin.site.register(Chapter, ChapterAdmin)
