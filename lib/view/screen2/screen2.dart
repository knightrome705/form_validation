import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_application/controller/form_controller.dart';
import 'package:my_application/utils/app_colors.dart';
import 'package:my_application/utils/app_style.dart';

import '../../widgets/cust_textfield.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    //initlize the controller in this screen2
    final controller = Get.put(FormController());
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Screen 1',
            style: TextStyle(color: textColor),
          ),
          backgroundColor: apbarTeme,
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          height: double.infinity,
          width: double.infinity,
          color: bgColor,
          child: Form(
            key: controller.form, //generated key for validatiion
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Enter Name',
                  style: AppStyle.titleStyle,
                ),
                const SizedBox(
                  height: 5,
                ),
                CustText(
                  controller: controller.name,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Enter Email',
                  style: AppStyle.titleStyle,
                ),
                const SizedBox(
                  height: 5,
                ),
                CustText(
                  controller: controller.email,
                ),
                const SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                    onPressed: () {
                      //validation of the form
                      bool validate = controller.form.currentState!.validate();
                      if (validate) {
                        Get.snackbar(
                            "Message", 'Welcome ${controller.name.text} ');
                          controller.clearController();
                      } else {
                        Get.snackbar("Message", "Error");
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(400, 50),
                        backgroundColor: Colors.red),
                    child: const Text(
                      'Submit',
                      style: TextStyle(color: white),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
