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


  void getUser() async{
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    user = UserModel(
      name: "Paulo",
      photoUrl: "https://avatars.githubusercontent.com/u/72519926?v=4",
    );
    state = HomeState.success;
  }


  void getQuizzes() async{
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    quizzes =  [
      QuizModel(
          title: "Titulo 01",
          questionAnswerd: 1,
          question: [
            QuestionModel(title: "Titulo 01",
                awnsers: [
                  AwnserModel(
                      title: "Resposta 01"
                  ),
                  AwnserModel(
                      title: "Resposta 02"
                  ),
                  AwnserModel(
                      title: "Resposta 03"
                  ),
                  AwnserModel(
                      title: "Resposta 04", isRight: true
                  ),

                ]
            ),


            QuestionModel(title: "Titulo 01",
                awnsers: [
                  AwnserModel(
                      title: "Resposta 01"
                  ),
                  AwnserModel(
                      title: "Resposta 02"
                  ),
                  AwnserModel(
                      title: "Resposta 03"
                  ),
                  AwnserModel(
                      title: "Resposta 04", isRight: true
                  ),

                ]
            ),
          ],
      )
    ];
    state = HomeState.success;
  }

}