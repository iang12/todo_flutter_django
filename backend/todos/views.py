from django.shortcuts import render
from rest_framework import generics
from todos.models import Todo 
from .serializers import TodoSerializer

class ListTodo(generics.ListAPIView):
	queryset         = Todo.objects.all()
	serializer_class = TodoSerializer

class TodoCreateAPIView(generics.CreateAPIView):
  queryset         = Todo.objects.all()
  serializer_class = TodoSerializer

class DetailTodo(generics.RetrieveUpdateDestroyAPIView):
	queryset         = Todo.objects.all()
	serializer_class = TodoSerializer  