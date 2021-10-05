import 'package:flutter/material.dart';
import 'package:quiz_flutter/core/app_colors.dart';
import 'package:quiz_flutter/home/widget/appbar/appbar_widget.dart';
import 'package:quiz_flutter/home/widget/quiz_card/quiz_card_widget.dart';

import 'home_controller.dart';
import 'home_state.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final controller = HomeController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller.getQuizzes();
    controller.getUser();

    controller.stateNotifier.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    if(controller.state == HomeState.success) {
      return Scaffold(

          appBar: AppBarWidget(user: controller.user!,),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [

                SizedBox(height: 24,),

                Expanded(
                  child: GridView.count(
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,

                    crossAxisCount: 2,
                    children: controller.quizzes!.map((e) =>
                        QuizCardWidget(
                          title: e.title,
                          completed: "${e.questionAnswerd}/${e.question
                              .length}",
                          porcent: e.questionAnswerd / e.question.length,
                        )).toList(),
                  ),
                ),


              ],
            ),
          )

      );
    } else {
      return Scaffold(
        body: Center(child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(AppColors.darkGreen),
        ),),
      );
    }
  }
}
