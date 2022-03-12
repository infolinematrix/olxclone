import 'package:appwrite_project/app/modules/location/bindings/location_binding.dart';
import 'package:appwrite_project/app/modules/location/views/city_view.dart';
import 'package:appwrite_project/theme/color/colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../theme/index.dart';
import '../controllers/location_controller.dart';

class LocationView extends GetView<LocationController> {
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
              if (_.states!.length == 0) {
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
                  itemCount: _.states!.length,
                  itemBuilder: (BuildContext context, int index) {
                    String item = _.states![index];
                    return InkWell(
                      onTap: () async {
                        await controller.getCities(state: item);
                        Get.to(() => CityView(), binding: LocationBinding());
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 16),
                        child: Text(
                          "${item}",
                          style: TextStyles.primary14Bold,
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
