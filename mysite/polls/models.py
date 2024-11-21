from django.db import models
from django.utils import timezone
import datetime

# Create your models here.
# 问题模型 包含两个字段：1.问题描述，2.发布时间
class Question(models.Model):
    # attributes
    question_text = models.CharField(max_length=200)
    pub_date = models.DateTimeField('date published')
    
    #
    def __str__(self):
        return self.question_text

    def was_published_recently(self):
        now = timezone.now()
        return now - datetime.timedelta(days=1) <= self.pub_date <= now

# 选项模型 包含两个字段：1.选项描述，2.投票数
class Choice(models.Model):
    question = models.ForeignKey(Question, on_delete=models.CASCADE)
    choice_text =  models.CharField(max_length=200)
    votes = models.IntegerField(default=0)

    #
    def __str__(self):
        return self.choice_text