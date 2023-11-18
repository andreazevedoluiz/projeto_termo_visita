import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:projeto_termo_visita/login/loginController.dart';

class PasswordWidget extends GetView<LoginController> {
  const PasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  TextField(
      controller: controller.passwordInput,
      decoration: InputDecoration(hintText: 'Senha'),);
  }
}