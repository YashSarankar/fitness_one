import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../main.dart';
import '../../../routes/app_pages.dart';
import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const GradiantBackground(),
          const TopOval(),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 100, right: 30, left: 30),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 35,
                    ),
                    Container(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {
                            Get.toNamed(Routes.REGISTER_PAGE);
                          },
                          style:
                              ElevatedButton.styleFrom(primary: Colors.brown),
                          child: const Text(
                            "GET STARTED",
                          )),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(primary: Colors.brown),
                          onPressed: () {
                            Get.toNamed(Routes.LOGIN_PAGE);
                          },
                          child: const Text("LOGIN")),
                    ),
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
