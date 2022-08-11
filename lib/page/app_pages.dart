import 'package:eaxily/features/login/binding_login.dart';
import 'package:eaxily/features/login/page_login.dart';
import 'package:eaxily/features/main/binding_main.dart';
import 'package:eaxily/features/main/page_main.dart';
import 'package:eaxily/features/register/binding_regis.dart';
import 'package:eaxily/features/register/page_regis.dart';
import 'package:eaxily/features/splash_screen/binding_splash.dart';
import 'package:eaxily/features/splash_screen/page_splash.dart';
import 'package:eaxily/features/sub_kategori.dart/binding_subkategori.dart';
import 'package:eaxily/features/sub_kategori.dart/page_subkategori.dart';
import 'package:eaxily/page/app_routes.dart';
import 'package:get/get.dart';

class AppPages{
  static final pages = [
    GetPage(
      name: Routes.INITIAL,
      page: () => const PageSplash(),
      binding: BindingSplash(),
    ),
    GetPage(
      name: Routes.login,
      page: () => const PageLogin(),
      binding: BindingLogin(),
    ),
    GetPage(
      name: Routes.register,
      page: () => const PageRegis(),
      binding: BindingRegis(),
    ),
    GetPage(
      name: Routes.main,
      page: () => const PageMain(),
      binding: BindingMain(),
    ),
    GetPage(
      name: Routes.sub_kategori,
      page: () => const PageSubkategori(),
      binding: BindingSubkategori(),
    ),
  ];
}