import 'package:eaxily/features/sub_kategori.dart/api_subkategori.dart';
import 'package:eaxily/features/sub_kategori.dart/controller_subkategori.dart';
import 'package:get/get.dart';

class BindingSubkategori implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<ControllerSubKategori>(() => ControllerSubKategori(api: ApiSubkategori()));
  }
}