import 'package:eaxily/features/login/api_login.dart';
import 'package:eaxily/features/login/controller_login.dart';
import 'package:eaxily/features/splash_screen/controller_splash.dart';
import 'package:get/get.dart';

class ControllerBind extends Bindings {
  @override
  void dependencies() {
    Get.put(ControllerSplash());
    Get.put(ControllerLogin(api: ApiLogin()));
  }
}