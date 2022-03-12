import 'package:appwrite_project/app/modules/account/bindings/account_binding.dart';
import 'package:appwrite_project/app/modules/account/views/ads_view.dart';
import 'package:appwrite_project/app/modules/account/views/help_view.dart';
import 'package:appwrite_project/app/modules/account/views/packages_view.dart';
import 'package:appwrite_project/app/modules/account/views/settings_view.dart';
import 'package:appwrite_project/theme/index.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/account_controller.dart';
import 'widgets/header.dart';

class AccountView extends GetView<AccountController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account'),
        centerTitle: false,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              HeaderWidget(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                    "We are build on trust, Help one another to get to know each other better."),
              ),
              ListTile(
                isThreeLine: false,
                onTap: () {
                  Get.to(() => PackagesView(), binding: AccountBinding());
                },
                leading: Icon(
                  Icons.card_membership,
                  size: 32,
                  color: ThemeColors.primaryColor,
                ),
                title: Text(
                  "Buy Packages & My Orders",
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(fontWeight: FontWeight.w500),
                ),
                subtitle: Text("Packages, orders, billing and invoices"),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                ),
              ),
              ListTile(
                isThreeLine: false,
                onTap: () {
                  Get.to(() => SettingsView(), binding: AccountBinding());
                },
                leading: Icon(
                  Icons.settings,
                  size: 32,
                  color: ThemeColors.primaryColor,
                ),
                title: Text(
                  "Settings",
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(fontWeight: FontWeight.w500),
                ),
                subtitle: Text("Packages, orders, billing and invoices"),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                ),
              ),
              ListTile(
                isThreeLine: false,
                onTap: () {
                  Get.to(() => AdsView(), binding: AccountBinding());
                },
                leading: Icon(
                  Icons.announcement,
                  size: 32,
                  color: ThemeColors.primaryColor,
                ),
                title: Text(
                  "My Ads",
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(fontWeight: FontWeight.w500),
                ),
                subtitle: Text("Packages, orders, billing and invoices"),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                ),
              ),
              ListTile(
                isThreeLine: false,
                onTap: () {
                  Get.to(() => HelpView(), binding: AccountBinding());
                },
                leading: Icon(
                  Icons.help_center,
                  size: 32,
                  color: ThemeColors.primaryColor,
                ),
                title: Text(
                  "Help & Support",
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(fontWeight: FontWeight.w500),
                ),
                subtitle: Text("Packages, orders, billing and invoices"),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
