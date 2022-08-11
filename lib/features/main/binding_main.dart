import 'package:eaxily/features/booking/api_booking.dart';
import 'package:eaxily/features/booking/controller_booking.dart';
import 'package:eaxily/features/home/controller_home.dart';
import 'package:eaxily/features/main/controller_main.dart';
import 'package:eaxily/features/saved/api_saved.dart';
import 'package:eaxily/features/saved/controller_saved.dart';
import 'package:get/get.dart';
import '../home/api_home.dart';
import '../profile/api_profile.dart';
import '../profile/controller_profile.dart';

class BindingMain implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<ControllerMain>(() => ControllerMain());
    Get.lazyPut<ControllerHome>(() => ControllerHome(api: ApiHome()));
    Get.lazyPut<ControllerSaved>(() => ControllerSaved(api: ApiSaved()));
    Get.lazyPut<ControllerBooking>(() => ControllerBooking(api: ApiBooking()));
    Get.lazyPut<ControllerProfile>(() => ControllerProfile(api: ApiProfile()));
  }
}