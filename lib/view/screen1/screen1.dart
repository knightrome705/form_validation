import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_application/utils/app_colors.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(
          'Screen 1',
          style: TextStyle(color: textColor),
        ),
        backgroundColor: apbarTeme,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: bgColor,
        child: Center(
          child: ElevatedButton(
              onPressed: () {
                Get.offAllNamed('/screen2');                    //named routing
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: btnColor,
              ),
              child: const Text(
                'Screen',
                style: TextStyle(color: textColor),
              )),
        ),
      ),
    );
  }
}
