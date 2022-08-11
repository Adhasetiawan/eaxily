import 'package:eaxily/features/register/api_regis,.dart';
import 'package:eaxily/features/register/controller_regis.dart';
import 'package:get/get.dart';

class BindingRegis implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<ControllerRegis>(() => ControllerRegis(api: ApiRegis()));
  }
}