import 'package:eaxily/features/saved/api_saved.dart';
import 'package:eaxily/features/saved/controller_saved.dart';
import 'package:get/get.dart';

class BindingSaved implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<ControllerSaved>(() => ControllerSaved(api: ApiSaved()));
  }
}