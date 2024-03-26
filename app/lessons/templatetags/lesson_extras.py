import markdown
from django import template
from django.template.defaultfilters import stringfilter
from django.utils.safestring import mark_safe

register = template.Library()



@register.filter
@stringfilter
def render_markdown(value):
    # Используем расширение CodeHilite для подсветки синтаксиса
    md = markdown.Markdown(
        extensions=["fenced_code", "codehilite"]
    )
    return mark_safe(md.convert(value))
