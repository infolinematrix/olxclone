import 'package:appwrite_project/app/data/dummy.dart';
import 'package:appwrite_project/utils/index.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../theme/index.dart';
import '../controllers/search_controller.dart';

class SearchView extends GetView<SearchController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 20,
        leading: Icon(
          Icons.place,
          color: Colors.black,
        ).marginOnly(left: 8.0),
        title: Row(
          children: [
            Text('Siliguri, West Bengal'),
            Icon(
              Icons.expand_more,
              size: 32,
              color: ThemeColors.appBarColorDark,
            )
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 70,
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search...",
                          hintStyle: TextStyle(
                            color: Colors.black.withAlpha(120),
                          ),
                          border: InputBorder.none,
                        ),
                        onChanged: (String keyword) {
                          print(keyword);
                        },
                      ),
                    ),
                    Container(
                      color: ThemeColors.hintTextColor,
                      width: 60,
                      height: double.infinity,
                      margin: EdgeInsets.only(left: 4),
                      child: Icon(
                        Icons.search,
                        color: Colors.black.withAlpha(120),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "RECENT SEARCH",
                      style: TextStyles.primary13
                          .copyWith(color: Colors.grey.shade600),
                    ),
                    UIHelper.verticalSpaceMedium(),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: DummyData.recent_search.length,
                      itemBuilder: (BuildContext context, int index) {
                        Map item = DummyData.recent_search[index];
                        return ListTile(
                          dense: true,
                          title: Text(
                            "${item['title']}",
                            style: TextStyles.primary16W500,
                          ),
                          trailing: Icon(
                            Icons.close,
                            size: 24,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              Divider(),
              Container(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "POPULAR CATEGORIES",
                      style: TextStyles.primary13
                          .copyWith(color: Colors.grey.shade600),
                    ),
                    UIHelper.verticalSpaceMedium(),
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: DummyData.categories().length,
                      itemBuilder: (BuildContext context, int index) {
                        Map item = DummyData.categories()[index];
                        return ListTile(
                          dense: true,
                          title: Text(
                            "${item['title']}",
                            style: TextStyles.primary16W500,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
