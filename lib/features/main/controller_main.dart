import 'package:eaxily/features/booking/page_booking.dart';
import 'package:eaxily/features/home/page_home.dart';
import 'package:eaxily/features/saved/page_saved.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../profile/page_profile.dart';

class ControllerMain extends GetxController{
  late PageController pageController;
  var currentPage = 0.obs;
  final List<Widget> pages = [
    const PageHome(),
    const PageSaved(),
    const PageBooking(),
    const PageProfile(),
  ];

  @override
  void onInit() {
    super.onInit();
    pageController = PageController(initialPage: currentPage.value);
  }

  @override
  void onReady() {
    super.onReady();
    var pageArg = Get.arguments;
    if (pageArg != null) {
      changePage(pageArg);
      pageController.jumpToPage(pageArg);
    }
  }

  void changePage(index) => currentPage.value = index;
}