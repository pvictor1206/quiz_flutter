import 'dart:convert';
import 'dart:core';

import 'package:quiz_flutter/shared/models/question_model.dart';


class QuizModel {
  final String title;
  final List<QuestionModel> question;
  final int questionAnswerd;

  QuizModel({required this.title, required this.question, this.questionAnswerd = 0});

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'question': question.map((e) => e.toMap()).toList(),
      'questionAnswered': questionAnswerd,

    };
  }

  factory QuizModel.fromMap(Map<String, dynamic> map) {
    return QuizModel(
        title: map['title'],
      question: List<QuestionModel>.from(
        map['question']?.map((e) => QuestionModel.fromMap(e))),
      questionAnswerd: map['questionAnswerd'],
    );
  }

  String toJson() => json.encode(toMap());

  factory QuizModel.fromJson(String source) => QuizModel.fromMap(json.decode(source));
}