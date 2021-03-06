import 'dart:convert';

import 'awnser_model.dart';


class QuestionModel{
  final String title;
  final List<AwnserModel> awnsers;

  QuestionModel({required this.title, required this.awnsers}) : assert(awnsers.length == 4);

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'awnsers': awnsers.map((e) => e.toMap()).toList(),

    };
  }

  factory QuestionModel.fromMap(Map<String, dynamic> map) {
    return QuestionModel(
      title: map['title'],
      awnsers: List<AwnserModel>.from(
          map['awnsers']?.map((e) => AwnserModel.fromMap(e))),
    );
  }

  String toJson() => json.encode(toMap());

  factory QuestionModel.fromJson(String source) => QuestionModel.fromMap(json.decode(source));

}