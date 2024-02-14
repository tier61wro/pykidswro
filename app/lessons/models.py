from django.db import models

# Create your models here.
from django.db import models
from django.conf import settings

class Lesson(models.Model):
    title = models.CharField(max_length=100)
    content = models.TextField()
    order = models.PositiveIntegerField(unique=True)

    class Meta:
        ordering = ['order']

    def __str__(self):
        return self.title


class UserLessonProgress(models.Model):
    user = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)
    lesson = models.ForeignKey(Lesson, on_delete=models.CASCADE)
    completed = models.BooleanField(default=False)


    # создает уникальный составной индекс на полях user_id и lesson_id,
    # гарантируя, что для каждой пары пользователь-урок существует только одна запись в таблице UserLessonProgress.
    # Это предотвращает дублирование записей о прогрессе для одного и того же урока и пользователя.
    class Meta:
        unique_together = ('user', 'lesson')
