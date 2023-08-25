import 'package:flutter/material.dart';
import 'package:responsive_login_ui/login_screen.dart';
import 'package:responsive_login_ui/signup_screen.dart';
import 'package:responsive_login_ui/widgets/gardient_button.dart';

import 'colorCode.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/images/signin_balls.png'),
              const SizedBox(height: 85),
              const Icon(
                Icons.home_work_outlined,
                size: 60,
                color: ColorCode.gradient1,
              ),
              RichText(
                text: const TextSpan(
                  text: "W",
                  style: TextStyle(fontSize: 50, color: ColorCode.t1Color),
                  children: [
                    TextSpan(
                      text: 'E',
                      style: TextStyle(fontSize: 50, color: ColorCode.t2Color),
                    ),
                    TextSpan(
                      text: 'L',
                      style: TextStyle(fontSize: 50, color: ColorCode.t3Color),
                    ),
                    TextSpan(
                      text: 'C',
                      style: TextStyle(fontSize: 50, color: ColorCode.t4Color),
                    ),
                    TextSpan(
                      text: 'O',
                      style: TextStyle(fontSize: 50, color: ColorCode.t5Color),
                    ),
                    TextSpan(
                      text: 'M',
                      style: TextStyle(fontSize: 50, color: ColorCode.t6Color),
                    ),
                    TextSpan(
                      text: 'E ',
                      style: TextStyle(fontSize: 50, color: ColorCode.t7Color),
                    ),
                    TextSpan(
                      text: 'H',
                      style: TextStyle(fontSize: 50, color: ColorCode.t8Color),
                    ),
                    TextSpan(
                      text: 'O',
                      style: TextStyle(fontSize: 50, color: ColorCode.t9Color),
                    ),
                    TextSpan(
                      text: 'M',
                      style: TextStyle(fontSize: 50, color: ColorCode.t10Color),
                    ),
                    TextSpan(
                      text: 'E',
                      style: TextStyle(fontSize: 50, color: ColorCode.t11Color),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              const Text(
                'Here is your SignIn & SignUp Page. Have a nice day!',
                style: TextStyle(
                  fontSize: 17,
                  //fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 45),
              GradientButton(
                text: 'Sign In',
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LogInScreen(),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              GradientButton(
                text: 'Sign Up',
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignUpScreen(),
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
