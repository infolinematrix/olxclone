import 'package:appwrite_project/app/data/dummy.dart';
import 'package:get/get.dart';

class ListController extends GetxController {
  RxList<PostModel> posts = <PostModel>[].obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() async {
    super.onReady();
    await getPosts();
  }

  Future<void> getPosts() async {
    try {
      var data = DummyData.posts();
      data.forEach((element) {
        PostModel d = PostModel();
        d.title = element['title'];
        d.description = element['description'];
        d.image = element['image'];
        d.price = element['price'];
        d.location = element['location'];

        posts.addAll([d]);
      });
    } catch (e) {
      throw e;
    }
  }
}

class PostModel {
  String? title;
  String? description;
  String? image;
  int? price;
  String? location;
}
