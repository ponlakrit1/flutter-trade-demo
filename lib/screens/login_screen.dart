import 'package:trade_demo/utils/style.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              const Image(
                image: AssetImage("lib/assets/images/login_people.png"),
                width: 300.0,
                height: 300.0,
              ),
              const SizedBox(height: 50.0,),
              const Text(
                "Welcome",
                style: kTextStyleHeader,
              ),
              const SizedBox(height: 10.0,),
              Text(
                "Have some interesting today? \nKeep watching interesting thing \nLets us help you.",
                style: kTextStyleSubDetail.copyWith(color: Colors.black.withOpacity(0.5)),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20.0,),
              MaterialButton(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
                color: kPrimaryColor,
                minWidth: double.infinity,
                onPressed: () {

                },
                child: const Text(
                  "Sign In",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}