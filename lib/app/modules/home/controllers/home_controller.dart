import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
  final selectedIndex = RxInt(0);

  static const List<Widget> widgetOptions = <Widget>[
    Center(child: Text('Home Page')),
    Center(child: Text('Search Page')),
    Center(child: Text('Profile Page')),
  ];

  var selectedDate = DateTime.now().obs;

  pickDate() async {
    DateTime? pickDate = await showDatePicker(
      context: Get.context!,
      initialDate: selectedDate.value,
      firstDate: DateTime(2000),
      lastDate: DateTime(3000),
      helpText: "SelectDOB",
      cancelText: "close",
      confirmText: "confirm",
      errorFormatText: "Enter valid date",
      errorInvalidText: "Enter valid range",
      fieldLabelText: "DOB",
    );

    if (pickDate != null && pickDate != selectedDate.value) {
      selectedDate.value = pickDate;
    }
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
