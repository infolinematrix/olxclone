import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/menus.dart';

class AdsView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Ads'),
        centerTitle: false,
      ),
      body: ListView.separated(
        itemCount: Menus.ads().length,
        separatorBuilder: (BuildContext context, int index) {
          return Divider();
        },
        itemBuilder: (BuildContext context, int index) {
          var item = Menus.ads()[index];
          return ListTile(
            isThreeLine: false,
            title: Text(
              "${item['title']}",
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(fontWeight: FontWeight.w500),
            ),
            subtitle: Text("${item['subtitle']}"),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 16,
            ),
          );
        },
      ),
    );
  }
}
