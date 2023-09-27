import 'package:fitness_one/main.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/login_page_controller.dart';

class LoginPageView extends GetView<LoginPageController> {
  const LoginPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const GradiantBackground(),
          const TopOval(),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 100, left: 30, right: 30),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.8),
                  ),
                ),
                const SizedBox(height: 16.0),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.8),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forgot Password?",
                        style: TextStyle(
                          color: Colors.white70,
                          decoration: TextDecoration.underline,
                          fontSize: 14,
                        ),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    height: 40,
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.brown),
                        onPressed: () {
                          Get.toNamed(Routes.HOME);
                        },
                        child: const Text("Login"))),
                const SizedBox(
                  height: 180,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: RichText(
                    text: TextSpan(
                      text: "Don't have an account? ",
                      style: const TextStyle(color: Colors.black, fontSize: 16),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Sign up',
                          style: const TextStyle(
                            color: Colors.black,
                            decoration: TextDecoration.underline,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Get.toNamed(Routes.REGISTER_PAGE);
                            },
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                )
              ]),
            ),
          )
        ],
      ),
    );
  }
}
