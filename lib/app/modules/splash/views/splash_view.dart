import 'dart:ui';

import 'package:appwrite_project/app/routes/app_pages.dart';
import 'package:appwrite_project/utils/geo_location.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../theme/index.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetX<SplashController>(
                builder: (_) {
                  if (_.location!.value.country == null) {
                    return Column(
                      children: [
                        SizedBox(
                          height: 100,
                          child: Image.asset("assets/icons/map_loading.gif"),
                        ),
                        Text('Locating...',
                            style: TextStyles.primary14
                                .copyWith(fontWeight: FontWeight.w500)),
                      ],
                    );
                  } else {
                    return Text(
                        '${_.location!.value.city}, ${_.location!.value.state}',
                        style: TextStyles.primary14
                            .copyWith(fontWeight: FontWeight.w500));
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
