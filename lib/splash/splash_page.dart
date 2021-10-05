import 'package:flutter/material.dart';
import 'package:quiz_flutter/core/app_gradients.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        decoration: BoxDecoration(
          gradient: AppGradients.linear
        ),
        child: Center(
          child: Text("Dev Quiz", style: TextStyle(fontSize: 30),),
        ),
      ),

    );
  }
}
