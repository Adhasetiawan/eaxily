import 'package:eaxily/features/login/api_login.dart';
import 'package:eaxily/features/login/controller_login.dart';
import 'package:get/get.dart';

class BindingLogin implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<ControllerLogin>(() => ControllerLogin(api: ApiLogin()));
  }
}