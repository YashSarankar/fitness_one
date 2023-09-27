import 'dart:ui';

import 'package:fitness_one/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../main.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const GradiantBackground(),
          Positioned(
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
                  height: 440,
                  child: Obx(() {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: ListTile(
                              title: const Center(
                                  child: Text(
                                "Forever Strong",
                                style: TextStyle(color: Colors.white70),
                              )),
                              leading: IconButton(
                                  onPressed: () {},
                                  icon: IconButton(
                                    color: Colors.white70,
                                    onPressed: () {
                                      Get.toNamed(Routes.PROFILE_PAGE);
                                    },
                                    icon: Icon(
                                      Icons.person,
                                      size: 24,
                                    ),
                                  )),
                              trailing: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Help",
                                    style: TextStyle(color: Colors.white70),
                                  ))),
                        ),
                        const Divider(
                          height: 0,
                          thickness: 1,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Today",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextButton(
                          onPressed: () {
                            controller.pickDate();
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                          ),
                          child: CircleAvatar(
                            backgroundColor: Colors.white24,
                            radius: 100,
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Click to view \n    Calender",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white70),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    controller.selectedDate.value.day
                                        .toString(),
                                    style: const TextStyle(
                                        fontSize: 42,
                                        color: Colors.white70,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
                ),
              ),
            ),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white70,
                  radius: 40,
                  child: TextButton(
                      onPressed: () {},
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Track Weight",
                            style: TextStyle(color: Colors.black),
                          ))),
                ),
                CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.white70,
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Track \n Food",
                          style: TextStyle(color: Colors.black),
                        ))),
                CircleAvatar(
                    backgroundColor: Colors.white70,
                    radius: 40,
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "My Plans",
                          style: TextStyle(color: Colors.black),
                        ))),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white30, Colors.lightBlueAccent],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book_outlined),
              label: 'My Plans',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
              label: 'Tools',
            ),
          ],
          currentIndex: 0,
          selectedFontSize: 12,
          backgroundColor: Colors.transparent,
          elevation: 1,
          type: BottomNavigationBarType.fixed,
          iconSize: 18,
          unselectedItemColor: Colors.white70,
          selectedItemColor: Colors.black54,
          onTap: (index) {
            switch (index) {
              case 0:
                Get.toNamed(Routes.HOME);
                break;
              case 1:
                break;
              case 2:
                Get.toNamed(Routes.PROFILE_PAGE);
                break;
            }
          },
        ),
      ),
    );
  }
}
