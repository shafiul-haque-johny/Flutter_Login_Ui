import 'package:flutter/material.dart';
import 'package:responsive_login_ui/widgets/gardient_button.dart';
import 'package:responsive_login_ui/widgets/login_field.dart';
import 'package:responsive_login_ui/widgets/social_button.dart';

import 'colorCode.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/images/signin_balls.png'),
              const Text(
                'Sign In',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              //Image.asset('assets/images/signin_balls.png'),
              const SizedBox(height: 50),
              const SocialButton(
                iconPath: 'assets/logo/g_logo.svg',
                label: 'Continue with Google',
              ),
              const SizedBox(height: 20),
              const SocialButton(
                iconPath: 'assets/logo/f_logo.svg',
                label: 'Continue with Facebook',
                horizontalPadding: 90,
              ),
              const SizedBox(height: 15),
              const Text(
                'or',
                style: TextStyle(fontSize: 17),
              ),
              const SizedBox(height: 15),
              const LogInField(hintText: 'Email'),
              const SizedBox(height: 15),
              const LogInField(hintText: 'Password'),
              const SizedBox(height: 25),
              const GradientButton(),
              const SizedBox(height: 20),
              RichText(
                text: const TextSpan(
                  text: "Don\'t have an account?  ",
                  style: TextStyle(fontSize: 17, color: ColorCode.whiteColor2),
                  children: [
                    TextSpan(
                      text: 'Create Account',
                      style:
                          TextStyle(fontSize: 17, color: ColorCode.whiteColor),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Forgot Password?',
                style: TextStyle(fontSize: 17),
              ),
              const SizedBox(height: 5),
            ],
          ),
        ),
      ),
    );
  }
}
