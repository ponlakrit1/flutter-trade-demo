import 'package:flutter/material.dart';

import '../routes.dart';
import '../utils/style.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Image(image: AssetImage("lib/assets/images/welcome_people.png")),
            const Spacer(flex: 2),
            const Text(
              "Welcome to flutter \nChat demo",
              textAlign: TextAlign.center,
              style: kTextStyleHeader,
            ),
            const SizedBox(height: 20.0,),
            Text(
              "A Flutter chat demo project.",
              textAlign: TextAlign.center,
              style: kTextStyleSubDetail.copyWith(color: Colors.black.withOpacity(0.5))
            ),
            const Spacer(flex: 3),
            FittedBox(
              child: TextButton(
                onPressed: () {

                },
                child: Row(
                  children: [
                    Text(
                      "Skip",
                      style: kTextStyleSubDetail.copyWith(color: Colors.black.withOpacity(0.7)),
                    ),
                    const SizedBox(width: 10.0),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 14,
                      color: Colors.black.withOpacity(0.7),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20.0,),
          ],
        ),
      )
    );
  }
}