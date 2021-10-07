import 'package:flutter/cupertino.dart';
import 'package:quiz_flutter/shared/models/awnser_model.dart';
import 'package:quiz_flutter/shared/models/question_model.dart';
import 'package:quiz_flutter/shared/models/quiz_model.dart';
import 'package:quiz_flutter/shared/models/user_model.dart';

import 'home_repository.dart';
import 'home_state.dart';

class HomeController {

  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  final repository = HomeRepository();


  void getUser() async{
    await Future.delayed(Duration(seconds: 2));
    state = HomeState.loading;
    user = await repository.getUser();
    state = HomeState.success;
  }


  void getQuizzes() async{
    await Future.delayed(Duration(seconds: 2));
    state = HomeState.loading;
    quizzes =  await repository.getQuizzes();
    state = HomeState.success;
  }

}