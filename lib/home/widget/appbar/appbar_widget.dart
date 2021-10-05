import 'package:flutter/material.dart';
import 'package:quiz_flutter/core/app_gradients.dart';
import 'package:quiz_flutter/home/widget/score_card/score_card_widget.dart';
import 'package:quiz_flutter/shared/models/user_model.dart';

class AppBarWidget extends PreferredSize{

  final UserModel user;

  AppBarWidget({required this.user}) : super(

    preferredSize: Size.fromHeight(250),
      child: Container(
        height: 250,
        child: Stack(
          children: [
            Container(
              height: 161,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              width: double.maxFinite,
              decoration: BoxDecoration(
                  gradient: AppGradients.linear
              ),
              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [

                  Text.rich(
                      TextSpan(text: "Olá, ",style: TextStyle(color: Colors.white),
                          children: [
                            TextSpan(
                              text: user.name,
                              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),)

                          ]
                      )
                  ),

                  Container(
                    width: 58,
                    height: 58,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: NetworkImage(user.photoUrl)
                        )
                    ),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment(0.0, 1.0),
                child: ScoreCardWidget()
            ),
          ],
        ),
      ),
  );


}