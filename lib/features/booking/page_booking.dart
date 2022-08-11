import 'package:eaxily/features/booking/controller_booking.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class PageBooking extends GetView<ControllerBooking>{
  const PageBooking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('booking'),
      ),
    );
  }
}