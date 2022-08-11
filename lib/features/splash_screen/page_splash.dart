import 'package:eaxily/features/splash_screen/controller_splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageSplash extends GetView<ControllerSplash>{
  const PageSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Image.asset(
          'assets/images/splash_icon.png',
          height: 60,
          width: 170,
        ),
      ),
    );
  }
}