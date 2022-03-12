import 'package:appwrite_project/app/routes/app_pages.dart';
import 'package:appwrite_project/utils/geo_location.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../theme/index.dart';
import '../controllers/location_controller.dart';

class CityView extends GetView<LocationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select city'),
        centerTitle: false,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GetX<LocationController>(
            init: LocationController(),
            builder: (_) {
              if (_.cities!.length == 0) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                // return Text("${_.state}");
                return ListView.separated(
                  separatorBuilder: (BuildContext context, int index) {
                    return Divider(
                      thickness: .50,
                      color: ThemeColors.borderColorDisable,
                    );
                  },
                  itemCount: _.cities!.length,
                  itemBuilder: (BuildContext context, int index) {
                    Map item = _.cities![index];
                    return InkWell(
                      onTap: () {
                        controller.setCity(
                            city: item['city'], state: item['state']);

                        // Get.toNamed(Routes.HOME);
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 16),
                        child: RichText(
                          text: TextSpan(
                            text: '${item['city']}, ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                            children: <TextSpan>[
                              TextSpan(
                                  text: '${item['state']}',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.normal)),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
