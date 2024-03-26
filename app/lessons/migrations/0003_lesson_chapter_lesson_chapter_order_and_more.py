# Generated by Django 4.2.11 on 2024-03-20 12:58

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('lessons', '0002_alter_lesson_options_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='lesson',
            name='chapter',
            field=models.CharField(default='Podstawy Pythona', max_length=100),
        ),
        migrations.AddField(
            model_name='lesson',
            name='chapter_order',
            field=models.PositiveIntegerField(blank=True, null=True),
        ),
        migrations.AlterField(
            model_name='lesson',
            name='title',
            field=models.CharField(max_length=200),
        ),
        migrations.AlterUniqueTogether(
            name='lesson',
            unique_together={('chapter', 'chapter_order')},
        ),
    ]
