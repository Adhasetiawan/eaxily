import 'package:eaxily/features/sub_kategori.dart/api_subkategori.dart';
import 'package:get/get.dart';

class ControllerSubKategori extends GetxController{
  final ApiSubkategori api;
  ControllerSubKategori({required this.api});

  var selectedVal = false.obs;

  changeVal()=> selectedVal.value == false ? selectedVal.value = true : selectedVal.value = false;

}