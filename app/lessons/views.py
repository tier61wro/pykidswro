from django.shortcuts import render, get_object_or_404, redirect
from .models import Lesson, UserLessonProgress
from django.contrib.auth.decorators import login_required


@login_required
def lesson_view(request, lesson_order):
    lesson = get_object_or_404(Lesson, order=lesson_order)
    user = request.user

    if lesson_order > 1:
        previous_lesson = get_object_or_404(Lesson, order=lesson_order - 1)
        try:
            progress = UserLessonProgress.objects.get(user=user, lesson=previous_lesson)
            if not progress.completed:
                return redirect('some-error')
        except UserLessonProgress.DoesNotExist:
            return redirect('some-error')

    context = {'lesson': lesson}
    print(f'{context=}')
    return render(request, 'lesson_detail.html', context)



