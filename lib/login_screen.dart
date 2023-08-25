import 'package:flutter/material.dart';
import 'package:responsive_login_ui/signup_screen.dart';
import 'package:responsive_login_ui/widgets/gardient_button.dart';
import 'package:responsive_login_ui/widgets/login_field.dart';
import 'package:responsive_login_ui/widgets/social_button.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

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
              GradientText(
                'Sign In',
                style: const TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
                colors: const [
                  ColorCode.gradient1,
                  ColorCode.gradient2,
                  ColorCode.gradient3
                ],
              ),
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
              const LogInField(
                hintText: 'Email',
                colorIndex: ColorCode.gradient2,
              ),
              const SizedBox(height: 15),
              const LogInField(
                hintText: 'Password',
                colorIndex: ColorCode.gradient2,
              ),
              const SizedBox(height: 25),
              GradientButton(
                text: 'Sign In',
                onPressed: () {
                  print('Sign In Button');
                },
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Don\'t have an account?  ',
                    style:
                        TextStyle(fontSize: 17, color: ColorCode.whiteColor2),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUpScreen(),
                      ),
                    ),
                    child: GradientText(
                      'Create Account',
                      style: const TextStyle(fontSize: 17),
                      colors: const [
                        ColorCode.gradient4,
                        ColorCode.gradient5,
                        ColorCode.gradient6,
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              const Text(
                'Forgot Password?',
                style: TextStyle(fontSize: 17, color: ColorCode.whiteColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
