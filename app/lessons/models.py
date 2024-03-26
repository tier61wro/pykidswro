from django.conf import settings
from django.db import models


class Chapter(models.Model):
    number = models.PositiveIntegerField(unique=True)
    name = models.CharField(max_length=100)

    class Meta:
        ordering = ['number']
        verbose_name = "Chapter"
        verbose_name_plural = "Chapters"

    def __str__(self):
        return f"{self.number}. {self.name}"


class Lesson(models.Model):
    order = models.PositiveIntegerField(unique=True)
    chapter_order = models.PositiveIntegerField(null=True, blank=True)
    chapter = models.ForeignKey(Chapter, on_delete=models.CASCADE, related_name="lessons")
    title = models.CharField(max_length=200)
    content = models.TextField()

    class Meta:
        ordering = ['order']
        verbose_name = "Lesson"
        verbose_name_plural = "Lessons"
        unique_together = ('chapter', 'chapter_order')  # ограничение уникальности

    def __str__(self):
        return self.title


class UserLessonProgress(models.Model):
    user = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)
    lesson = models.ForeignKey(Lesson, on_delete=models.CASCADE)
    completed = models.BooleanField(default=False)


    '''создает уникальный составной индекс на полях user_id и lesson_id,
    гарантируя, что для каждой пары пользователь-урок существует только одна запись в таблице UserLessonProgress.
    Это предотвращает дублирование записей о прогрессе для одного и того же урока и пользователя.'''
    class Meta:
        unique_together = ('user', 'lesson')
        verbose_name = "UserLessonProgress"
        verbose_name_plural = "UserLessonProgresses"
