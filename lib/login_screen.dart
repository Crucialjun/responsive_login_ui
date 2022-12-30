import 'package:flutter/material.dart';
import 'package:responsive_login_ui/gradient_button.dart';
import 'package:responsive_login_ui/login_field.dart';
import 'package:responsive_login_ui/social_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/signin_balls.png"),
            const Text(
              "Sign in.",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
            ),
            const SizedBox(
              height: 50,
            ),
            const SocialButton(
                iconPath: "assets/svgs/g_logo.svg",
                labelText: "Continue with Google"),
            const SizedBox(
              height: 20,
            ),
            const SocialButton(
              iconPath: "assets/svgs/f_logo.svg",
              labelText: "Continue with Facebook",
              horizontalPadding: 90,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "or",
              style: TextStyle(fontSize: 17),
            ),
            const SizedBox(
              height: 15,
            ),
            const LoginField(
              hintText: "Email",
            ),
            const SizedBox(
              height: 15,
            ),
            const LoginField(
              hintText: "Password",
            ),
            const SizedBox(
              height: 15,
            ),
            const GradientButton()
          ],
        ),
      ),
    );
  }
}
