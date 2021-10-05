import 'package:flutter/material.dart';
import 'package:quiz_flutter/core/app_colors.dart';
import 'package:quiz_flutter/shared/widget/progress_indicator.dart';


class QuizCardWidget extends StatelessWidget {

  final String title;
  final String completed;
  final double porcent;

  const QuizCardWidget({Key? key, required this.title, required this.completed, required this.porcent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.fromBorderSide(BorderSide(color: AppColors.border)),
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              height: 40,
              width: 40,
              child: Icon(Icons.addchart_outlined),
            ),

            Text(title),

            SizedBox(height: 20,),

            Row(
              children: [

                Expanded(
                    flex: 1,
                    child: Text(completed)),

                SizedBox(height: 20,),

                Expanded(
                  flex: 4,
                  child: ProgressIndicatorWidget(value: porcent,)
                )
              ],
            )


          ],
        ),
      ),

    );
  }
}

