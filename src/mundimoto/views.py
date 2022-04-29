from django.shortcuts import render


def index(request):
    latest_question_list = ["1. asdf", "2. asdf", "3. asdf"]
    context = {
        'latest_question_list': latest_question_list,
    }
    return render(request, 'index.html', context)
