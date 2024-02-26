from django.core.validators import MaxValueValidator, MinValueValidator
from django.db import models


class DiaryEntry(models.Model):
    date = models.DateField()
    steps = models.IntegerField(validators=[MinValueValidator(0), MaxValueValidator(100000)])
    study_hours = models.IntegerField()

    def __str__(self):
        return str(self.date)
