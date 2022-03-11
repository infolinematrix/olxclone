import 'package:appwrite_project/app/data/dummy.dart';
import 'package:appwrite_project/app/modules/post/views/sub_categories_view.dart';
import 'package:appwrite_project/theme/index.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class CategoriesView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Cetegory'),
        centerTitle: false,
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: DummyData.categories().length,
          // separatorBuilder: (BuildContext context, int index) {
          //   return Divider();
          // },
          itemBuilder: (BuildContext context, int index) {
            var item = DummyData.categories()[index];
            return Container(
              color: ThemeColors.backgroundColor,
              child: ListTile(
                onTap: (() {
                  if (item['sub_categories'].length > 0) {
                    Get.to(() => SubCategoriesView());
                  }
                }),
                tileColor: Colors.white,
                title: Text(
                  "${item['title']}",
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
