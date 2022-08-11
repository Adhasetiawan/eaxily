import 'dart:developer';

import 'package:eaxily/features/register/api_regis,.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControllerRegis extends GetxController{
  final ApiRegis api;
  ControllerRegis({required this.api});

  var termService = false.obs;

  var edtFullname = TextEditingController();
  var edtEmail = TextEditingController();
  var edtPassword = TextEditingController();
  var edtRetypepass = TextEditingController();

  var autoSignin = false.obs;
  final formkeyRegis = GlobalKey<FormState>();

  @override
  void onClose() {
    super.onClose();
    edtFullname.dispose();
    edtEmail.dispose();
    edtPassword.dispose();
    edtRetypepass.dispose();
  }

  validator()async{
    if(formkeyRegis.currentState!.validate()){
      log('Success');
    }else{
      log('Please check input data');
    }
  }
}