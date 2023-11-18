import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:http/http.dart';
import 'package:projeto_termo_visita/login/loginController.dart';
import 'package:projeto_termo_visita/login/widgets_/email.Widget.dart';
import 'package:projeto_termo_visita/login/widgets_/loginButton.widget.dart';
import 'package:projeto_termo_visita/login/widgets_/passwordFild.widget.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('Login'))),
      body: _body(),
    );
  }
}

  _body() {
    return Center(
     child: ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.all(12),
        children:  [
          SizedBox(height: Get.height / 3,),
          //Divider(),
         EmailWidget(),
          SizedBox(height: 27,),
          PasswordWidget(),
         SizedBox(height: 27,),
          Divider(),
          SizedBox(height: 27,),
           LoginButton(), 
           ],
      ),
    );
  }

