import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/menus.dart';

class SettingsView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        centerTitle: false,
      ),
      body: ListView.separated(
        itemCount: Menus.settings().length,
        separatorBuilder: (BuildContext context, int index) {
          return Divider();
        },
        itemBuilder: (BuildContext context, int index) {
          var item = Menus.settings()[index];
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
