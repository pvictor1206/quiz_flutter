import 'package:flutter/material.dart';
import 'package:quiz_flutter/challenge/widget/awnser/awnser_widget.dart';

class QuizWidget extends StatefulWidget {
  
  final String title;
  
  const QuizWidget({Key? key, required this.title}) : super(key: key);

  @override
  _QuizWidgetState createState() => _QuizWidgetState();
}

class _QuizWidgetState extends State<QuizWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
        Text(widget.title),
        
        SizedBox(height: 24,),
        
        AwnserWidget(isRight : false, isSelected: true, title: "opcao 01"),
        AwnserWidget(title: "opcao 02"),
        AwnserWidget(title: "opcao 03"),
        AwnserWidget(title: "opcao 04"),

        
        
      ],
    );
  }
}
