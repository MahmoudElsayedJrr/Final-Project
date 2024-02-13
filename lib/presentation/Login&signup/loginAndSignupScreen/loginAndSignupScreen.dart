import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/presentation/Login&signup/loginAndSignupScreen/loginAndSignupButtons.dart';
import 'package:final_project/presentation/Login&signup/loginAndSignupScreen/mainLogo.dart';
import 'package:final_project/presentation/Login&signup/loginAndSignupScreen/skipButton.dart';
import 'package:flutter/material.dart';

class loginAndSignupScreen extends StatelessWidget {
  const loginAndSignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            mainLogo(),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: kMainColor,
                borderRadius: BorderRadius.vertical(
                    top: Radius.elliptical(
                        MediaQuery.of(context).size.width, 130)),
              ),
              child: Padding(
                padding:
                    EdgeInsets.only(top: 20, left: 16, right: 16, bottom: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/WelcomeImg.png'),
                      SizedBox(height: 30),
                      loginAndSignupButtons(),
                      SizedBox(height: 20),
                      skipItNowButton(),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}