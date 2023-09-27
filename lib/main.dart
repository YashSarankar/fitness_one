import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}

class GradiantBackground extends StatelessWidget {
  const GradiantBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF010018),
            Color(0xFF010018),
            Color(0xFF010018),
            Colors.black12
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
    );
  }
}

class TopOval extends StatefulWidget {
  const TopOval({super.key});

  @override
  State<TopOval> createState() => _TopOvalState();
}

class _TopOvalState extends State<TopOval> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -160,
      left: -10,
      right: -10,
      child: ClipOval(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.deepOrangeAccent,
                  Colors.deepOrangeAccent,
                  Colors.white30,
                  Colors.black26,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            height: 400,
            child: const Padding(
              padding: EdgeInsets.only(top: 120),
              child: Center(
                  child: Text(
                "FOREVER \n STRONG",
                style: TextStyle(
                    color: Colors.white60,
                    fontSize: 42,
                    fontWeight: FontWeight.w500),
              )),
            ),
          ),
        ),
      ),
    );
  }
}
