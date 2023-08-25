import 'package:flutter/material.dart';
import 'package:responsive_login_ui/login_screen.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'colorCode.dart';
import 'widgets/gardient_button.dart';
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
              Image.network('assets/images/signin_balls.png'),
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
              const LogInField(hintText: 'Name'),
              const SizedBox(height: 15),
              const LogInField(hintText: 'Email'),
              const SizedBox(height: 15),
              const LogInField(hintText: 'Password'),
              const SizedBox(height: 25),
              GradientButton(
                text: 'Sign Up',
                onPressed: () {},
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
              const SizedBox(height: 5),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LogInScreen(),
                  ),
                ),
                child: RichText(
                  text: const TextSpan(
                    text: 'Already a user? ',
                    style:
                        TextStyle(fontSize: 17, color: ColorCode.whiteColor3),
                    children: [
                      TextSpan(
                        text: 'SignIn',
                        style: TextStyle(
                            fontSize: 17, color: ColorCode.whiteColor),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
