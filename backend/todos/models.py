from django.db import models

class Todo(models.Model):
	title      = models.CharField(max_length=200)
	body       = models.TextField()
	check      = models.BooleanField(default=False,blank=True)
	created_at = models.DateTimeField(auto_now_add=True)
	updated_at = models.DateTimeField(auto_now=True)
	
	def __str__(self):
		return self.title