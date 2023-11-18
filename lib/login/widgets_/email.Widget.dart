import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:projeto_termo_visita/login/loginController.dart';

class EmailWidget extends GetView<LoginController> {
  const EmailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller.emailInput,
      decoration: InputDecoration(hintText: 'E-mail'),);
  }
}