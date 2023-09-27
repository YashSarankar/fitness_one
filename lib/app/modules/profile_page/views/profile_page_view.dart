import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/profile_page_controller.dart';

class ProfilePageView extends GetView<ProfilePageController> {
  const ProfilePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text('My Profile'), backgroundColor: Color(0xFF010033)),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.blue,
                  width: 2.0,
                ),
              ),
              child: CircleAvatar(
                radius: 180,
                backgroundColor: Color(0xFF010033),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: 'Name',
                    hintText: 'Enter your name',
                  ),
                  onChanged: (value) {},
                ),
                const SizedBox(height: 20),

                // Mobile Number TextField
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: 'Mobile Number',
                    hintText: 'Enter your mobile number',
                  ),
                  onChanged: (value) {},
                ),
                const SizedBox(height: 20),

                Container(
                  width: 400,
                  height: 40,
                  child: Container(
                    width: 365,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.toNamed(Routes.HOME);
                      },
                      child: const Text('Login'),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.brown),
                        // Background color
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        // Text color
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                            EdgeInsets.all(18)),
                        // Button padding
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(10), // Border radius
                          ),
                        ),
                        textStyle: MaterialStateProperty.all<TextStyle>(
                          TextStyle(
                            fontSize: 18, // Text size
                            fontWeight: FontWeight.bold, // Text weight
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
