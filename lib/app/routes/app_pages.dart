import 'package:get/get.dart';

import 'package:appwrite_project/app/modules/post/bindings/post_binding.dart';
import 'package:appwrite_project/app/modules/post/views/categories_view.dart';
import 'package:appwrite_project/app/modules/post/views/post_view.dart';
import 'package:appwrite_project/app/modules/splash/bindings/splash_binding.dart';
import 'package:appwrite_project/app/modules/splash/views/splash_view.dart';

import '../modules/account/bindings/account_binding.dart';
import '../modules/account/views/account_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ACCOUNT,
      page: () => AccountView(),
      binding: AccountBinding(),
    ),
    GetPage(
      name: _Paths.POST,
      page: () => PostView(),
      binding: PostBinding(),
    ),
    GetPage(
      name: _Paths.POST_CREATE,
      page: () => CategoriesView(),
      binding: PostBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
  ];
}
