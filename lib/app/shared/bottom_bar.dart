import 'package:appwrite_project/app/modules/account/bindings/account_binding.dart';
import 'package:appwrite_project/app/modules/account/views/help_view.dart';
import 'package:appwrite_project/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../theme/index.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  final double iconSize = 24.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      color: ThemeColors.backgroundColor,
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: (() => Routes.HOME),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.home,
                  size: iconSize,
                  color: ThemeColors.labelTextColor,
                ),
                Text("Home"),
              ],
            ),
          ),
          InkWell(
            onTap: (() => null),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.chat,
                  size: iconSize,
                  color: ThemeColors.labelTextColor,
                ),
                Text("Chat"),
              ],
            ),
          ),
          SizedBox.square(
              // child: Text(
              //   "Post Ad",
              //   textAlign: TextAlign.center,
              // ).marginOnly(top: 24),
              ),
          InkWell(
            onTap: (() => Get.to(() => HelpView(), binding: AccountBinding())),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.help,
                  size: iconSize,
                  color: ThemeColors.labelTextColor,
                ),
                Text("Help"),
              ],
            ),
          ),
          InkWell(
            onTap: (() => Get.toNamed(Routes.ACCOUNT)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.account_box,
                  size: iconSize,
                  color: ThemeColors.labelTextColor,
                ),
                Text("Account"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
