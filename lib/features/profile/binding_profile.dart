import 'package:eaxily/features/profile/api_profile.dart';
import 'package:eaxily/features/profile/controller_profile.dart';
import 'package:get/get.dart';

class BindingProfile implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<ControllerProfile>(() => ControllerProfile(api: ApiProfile()));
  }
}