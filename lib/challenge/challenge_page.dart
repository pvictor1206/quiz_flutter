import 'package:flutter/material.dart';
import 'package:quiz_flutter/challenge/widget/question_indicator_widget/question_indicator_widget.dart';
import 'package:quiz_flutter/challenge/widget/quiz/quiz_widget.dart';

class ChallengePage extends StatefulWidget {
  const ChallengePage({Key? key}) : super(key: key);

  @override
  _ChallengePageState createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: SafeArea(
          top: true,
            child: QuestionIndicatorWidget()
        ),
      ),
      body: QuizWidget(title: 'PERGUNTA',),



    );
  }
}
