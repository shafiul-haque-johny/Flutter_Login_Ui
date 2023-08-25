import 'package:flutter/material.dart';
import 'package:responsive_login_ui/login_screen.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'colorCode.dart';
import 'widgets/gardient_button.dart';
import 'widgets/gradient_button2.dart';
import 'widgets/login_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.network('assets/images/signin_balls2.png'),
              const SizedBox(height: 15),
              GradientText(
                'Create \n          Account',
                style:
                    const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                colors: const [
                  ColorCode.gradient4,
                  ColorCode.gradient5,
                  ColorCode.gradient6
                ],
              ),
              const SizedBox(height: 30),
              const LogInField(
                hintText: 'Name',
                colorIndex: ColorCode.gradient5,
              ),
              const SizedBox(height: 15),
              const LogInField(
                hintText: 'Email',
                colorIndex: ColorCode.gradient5,
              ),
              const SizedBox(height: 15),
              const LogInField(
                hintText: 'Password',
                colorIndex: ColorCode.gradient5,
              ),
              const SizedBox(height: 25),
              GradientButton2(
                text: 'Sign Up',
                onPressed: () {
                  print('Sign Up Button');
                },
              ),
              const SizedBox(height: 15),
              const Text(
                'Or',
                style: TextStyle(fontSize: 17),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Positioned(
                    child: Image.network(
                      'assets/images/google.png',
                      fit: BoxFit.cover,
                      width: 35,
                      height: 35,
                    ),
                  ),
                  Positioned(
                    child: Image.network(
                      'assets/images/facebook.png',
                      fit: BoxFit.cover,
                      width: 35,
                      height: 35,
                    ),
                  ),
                  Positioned(
                    child: Image.network(
                      'assets/images/linkedin.png',
                      fit: BoxFit.cover,
                      width: 35,
                      height: 35,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already a user?  ',
                    style:
                        TextStyle(fontSize: 17, color: ColorCode.whiteColor3),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LogInScreen(),
                      ),
                    ),
                    child: GradientText(
                      'Sign In',
                      style: const TextStyle(fontSize: 17),
                      colors: const [
                        ColorCode.gradient1,
                        ColorCode.gradient2,
                        ColorCode.gradient3,
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
