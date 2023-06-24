import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  late TextEditingController emailController, passwordController;
  var email = '';
  var password = '';
  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
  }

  String? validateEmail(String value) {
    if (value!="foo@gmail.com") {
      return "Provide valid Email";
    }
    return null;
  }

  String? validatePassword(String value) {
    if (value!=0123456789) {
      return "wrong Password ";
    }
    return null;
  }

  Future<void>  checkLogin() async {
    final isValid = loginFormKey.currentState!.validate();
    if (!isValid) {
      return ;
    }
    loginFormKey.currentState!.save();
  }
}