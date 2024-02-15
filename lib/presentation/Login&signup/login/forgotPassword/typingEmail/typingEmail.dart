import 'package:final_project/presentation/Login&signup/login/forgotPassword/components/actionButton.dart';
import 'package:final_project/presentation/Login&signup/login/forgotPassword/components/backButton.dart';
import 'package:final_project/presentation/Login&signup/login/forgotPassword/components/descTitle.dart';
import 'package:final_project/presentation/Login&signup/login/forgotPassword/components/image.dart';
import 'package:final_project/presentation/Login&signup/login/forgotPassword/components/mainTitle.dart';
import 'package:flutter/material.dart';

class typingEmail extends StatelessWidget {
  const typingEmail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        backButton(),
        title(text: 'Forgot Password'),
        descTitle(
            desctitle:
                "Enter your email , and we'll send you a code to reset your password. Stay secure!"),
        SizedBox(height: 20),
        image(img: 'assets/images/forgotPassword/forgotPassword 1.png'),
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: TextFormField(
            //onChanged: (value) => email = value,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 15),
              labelText: 'Email',
              prefixIcon: const Icon(Icons.email_outlined),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        actionButton(text: 'Send Passcode', ontap: () {}),
        SizedBox(height: 50),
      ],
    );
  }
}