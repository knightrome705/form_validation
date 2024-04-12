import 'package:flutter/material.dart';
import 'package:my_application/utils/app_colors.dart';

class CustText extends StatelessWidget {
  final TextEditingController controller;
  const CustText({
    super.key,
    required this.controller

  });
                           //generated a custom widget because it is continously reused in the application
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType:TextInputType.emailAddress,
      controller: controller,
      decoration: InputDecoration(
          fillColor: white,
          filled: true,
          enabled: true,
          enabledBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.blue)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.red)),
          focusedErrorBorder:  OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.red)),
              ),
              validator: (value) {       //validating only if the fields is empty or not
                if(value!.isEmpty){
                  return 'required';
                }else{
                 return null;
                }
              },
    );
  }
}
