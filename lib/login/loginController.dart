import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:projeto_termo_visita/home/home_page.dart';

class LoginController extends GetxController {
  TextEditingController emailInput = TextEditingController();
  TextEditingController passwordInput = TextEditingController();
  static const email = 'andre@gmail.com';
  static const password = 'admin';

  void tryToLogin() {
    switch (emailInput.text) {
      case email:
        checkPassword();
        break;
      case '':
        errar('iNSIRA UM EMAIL');
        break;

      default:
        errar('email incorreto');
    }
  }

  void checkPassword() {
    // print('Login');
    switch (passwordInput.text) {
      case password:
        login();
      case '':
        errar('Insira uma senha');
        break;
      default:
        errar('senha incorreta');
    }
  }

  void login() {
    Get.to(HomePage());
  }

  void errar(String errar) {
    print(errar);
  }
}
