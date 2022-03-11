import 'package:get/get.dart';

import 'package:appwrite_project/app/modules/post/controllers/categories_controller.dart';

import '../controllers/post_controller.dart';

class PostBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CategoriesController>(
      () => CategoriesController(),
    );
    Get.lazyPut<PostController>(
      () => PostController(),
    );
  }
}
