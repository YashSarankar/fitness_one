import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../main.dart';
import '../../../routes/app_pages.dart';
import '../controllers/register_page_controller.dart';

class RegisterPageView extends GetView<RegisterPageController> {
  const RegisterPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const GradiantBackground(),
          const TopOval(),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 100,
                left: 40,
                right: 40,
              ),
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
                  decoration: InputDecoration(
                    labelText: 'Create Password',
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.8),
                  ),
                ),
                const SizedBox(height: 16.0),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.8),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                    height: 40,
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.brown),
                        onPressed: () {
                          Get.toNamed(Routes.HOME);
                        },
                        child: const Text("Signup"))),
                SizedBox(
                  height: 150,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: RichText(
                    text: TextSpan(
                      text: "Already have an account? ",
                      style: const TextStyle(color: Colors.black, fontSize: 16),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Login',
                          style: const TextStyle(
                            color: Colors.black,
                            decoration: TextDecoration.underline,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Get.toNamed(Routes.LOGIN_PAGE);
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
