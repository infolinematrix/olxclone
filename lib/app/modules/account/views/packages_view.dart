import 'package:appwrite_project/app/data/menus.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class PackagesView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Invoices & Billings'),
        centerTitle: false,
      ),
      body: ListView.separated(
        itemCount: Menus.packages().length,
        separatorBuilder: (BuildContext context, int index) {
          return Divider();
        },
        itemBuilder: (BuildContext context, int index) {
          var item = Menus.packages()[index];
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
