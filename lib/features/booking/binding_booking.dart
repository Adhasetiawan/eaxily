import 'package:eaxily/features/booking/api_booking.dart';
import 'package:eaxily/features/booking/controller_booking.dart';
import 'package:get/get.dart';

class BindingBooking implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<ControllerBooking>(() => ControllerBooking(api: ApiBooking()));
  }
}