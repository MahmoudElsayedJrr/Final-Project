import 'package:final_project/core/utilits/constant.dart';
import 'package:final_project/presentation/Login&signup/login/forgotPassword/components/actionButton.dart';
import 'package:final_project/presentation/Login&signup/login/forgotPassword/components/backButton.dart';
import 'package:final_project/presentation/Login&signup/login/forgotPassword/components/descTitle.dart';
import 'package:final_project/presentation/Login&signup/login/forgotPassword/components/image.dart';
import 'package:final_project/presentation/Login&signup/login/forgotPassword/components/mainTitle.dart';
import 'package:final_project/presentation/Login&signup/login/forgotPassword/emailConfirmation/otp.dart';
import 'package:final_project/presentation/Login&signup/login/forgotPassword/resetpassword/resetPassword.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class emailConfirmation extends StatelessWidget {
  const emailConfirmation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const backButton(),
        const title(text: 'Passcode'),
        const descTitle(
            desctitle:
                "Check your email or phone for a passcode. Enter it below to securely reset your password."),
        const SizedBox(height: 20),
        const image(img: 'assets/images/forgotPassword/email 2.png'),
        const SizedBox(height: 20),
        const OTP(),
        const SizedBox(height: 20),
        const Text(
          "Code expires in: 00:54",
          style: TextStyle(
              fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Didn’t receive code? ",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
            InkWell(
              onTap: () {},
              child: const Text(
                "Resend Code",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff0f24fe)),
              ),
            )
          ],
        ),
        SizedBox(height: 20),
        actionButton(
            text: "Verify",
            ontap: () {
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(64),
                          topRight: Radius.circular(64))),
                  duration: Duration(hours: 1),
                  backgroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                  content: resetPassword()));
            }),
        SizedBox(height: 20),
      ],
    );
  }
}