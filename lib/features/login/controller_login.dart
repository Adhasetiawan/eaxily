import 'dart:developer';

import 'package:eaxily/features/login/api_login.dart';
import 'package:eaxily/page/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControllerLogin extends GetxController{
  final ApiLogin api;
  ControllerLogin({required this.api});

  var edtUsername = TextEditingController();
  var edtPassword = TextEditingController();

  var autoSignin = false.obs;
  final formkeyLogin = GlobalKey<FormState>();

  @override
  void onClose() {
    super.onClose();
    edtUsername.dispose();
    edtPassword.dispose();
  }

  validator()async{
    if(formkeyLogin.currentState!.validate()){
      Get.toNamed(Routes.main);
      log('Success');
    }else{
      log('Please check input data');
    }
  }


}