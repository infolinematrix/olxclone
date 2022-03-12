import 'package:appwrite_project/app/modules/auth/bindings/auth_binding.dart';
import 'package:appwrite_project/app/modules/auth/views/mobile_login_view.dart';
import 'package:appwrite_project/utils/index.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../theme/constants/index.dart';
import '../../../../theme/index.dart';
import '../controllers/auth_controller.dart';

class AuthView extends GetView<AuthController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.backgroundColor,
      // appBar: AppBar(
      //   elevation: 0,
      //   // title: Text('Login'),
      //   centerTitle: false,
      // ),
      body: SafeArea(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: Get.height * .20,
            ),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 200,
                    child: Image.asset("assets/images/logo.png"),
                  ),
                  Center(
                    // alignment: Alignment.center,
                    child: Text(
                      "BUY ⦿ SELL ⦿ RENT",
                      textAlign: TextAlign.center,
                      style: TextStyles.primary18W700,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.all(32.0),
              color: ThemeColors.appBarColorDark,
              constraints: BoxConstraints(
                maxHeight: double.infinity,
              ),
              child: ListView(
                // direction: Axis.vertical,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Card(
                    child: ListTile(
                      onTap: () => Get.to(() => MobileLoginView(),
                          binding: AuthBinding()),
                      leading: Icon(Icons.phone_android),
                      title: Text(
                        "Login with mobile",
                        style: TextStyles.primary16W500,
                      ),
                      trailing: Icon(Icons.arrow_forward),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      onTap: () => null,
                      leading: Icon(
                        Icons.facebook,
                        color: Colors.blue,
                      ),
                      title: Text("Login with Facebook",
                          style: TextStyles.primary16W500),
                      trailing: Icon(Icons.arrow_forward),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
