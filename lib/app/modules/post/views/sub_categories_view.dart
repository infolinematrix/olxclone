import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SubCategoriesView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sub Categories'),
        centerTitle: false,
      ),
      body: Center(
        child: Text(
          'SubCategoriesView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
