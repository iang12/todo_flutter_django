from django.urls import path 
from .views import *
#https://www.caktusgroup.com/blog/2019/02/01/creating-api-endpoint-django-rest-framework/
#https://sunscrapers.com/blog/ultimate-tutorial-django-rest-framework-part-1/
#https://www.genuitec.com/how-to-build-crud-application-using-react-and-django/
urlpatterns = [
	path('<int:pk>/',DetailTodo.as_view()),
	path('create/',TodoCreateAPIView.as_view()),
	path('',ListTodo.as_view()),
]