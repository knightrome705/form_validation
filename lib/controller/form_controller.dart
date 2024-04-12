import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class FormController extends GetxController{
  GlobalKey<FormState> form=GlobalKey();
  TextEditingController name=TextEditingController();
  TextEditingController email=TextEditingController();
  void clearController(){
    name.clear();
    email.clear();
  }
  

}