from django.contrib import admin
from .models import Todo

class AdminTodo(admin.ModelAdmin):
	list_display = ['title','check','created_at']
admin.site.register(Todo,AdminTodo)