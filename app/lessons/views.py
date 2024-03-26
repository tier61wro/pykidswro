import markdown
from django.contrib.auth.decorators import login_required
from django.shortcuts import get_object_or_404, redirect, render

from .models import Lesson, UserLessonProgress


@login_required
def lesson_view(request, lesson_order):
    lesson = get_object_or_404(Lesson, order=lesson_order)
    user = request.user

    context = {'lesson': lesson}

    if lesson_order > 1:
        previous_lesson = get_object_or_404(Lesson, order=lesson_order - 1)
        try:
            progress = UserLessonProgress.objects.get(user=user, lesson=previous_lesson)
            if not progress.completed:
                # Урок еще не доступен
                return redirect('lesson_access_denied')
            context['previous_lesson'] = previous_lesson
        except UserLessonProgress.DoesNotExist:
            # Ошибка базы данных
            return redirect('main:site_error')

    # Проверка на существование следующего урока для контекста
    try:
        next_lesson = Lesson.objects.get(order=lesson_order + 1)
        context['next_lesson'] = next_lesson
    except Lesson.DoesNotExist:
        context['next_lesson'] = None


    return render(request, 'lesson_detail.html', context)


def lesson_access_denied_view(request):
    # Представление для ошибки доступа к уроку
    return render(request, 'lesson_access_denied.html', {})
