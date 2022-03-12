import 'package:appwrite_project/app/modules/auth/controllers/auth_controller.dart';
import 'package:appwrite_project/app/routes/app_pages.dart';
import 'package:appwrite_project/utils/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

import '../../../../theme/index.dart';

class MobileLoginView extends GetView<AuthController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(() {
          if (controller.isOtp == false) {
            return MobileView();
          } else {
            return OtpView();
          }
        }),
      ),
    );
  }
}

class MobileView extends GetView<AuthController> {
  final _formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: FormBuilder(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                UIHelper.verticalSpaceExtraLarge(),
                Text(
                  'Login with your Mobile number and OTP. Example 9832893116',
                  style: TextStyles.primary16W500,
                ),
                UIHelper.verticalSpaceLarge(),
                FormBuilderTextField(
                  name: 'phone',
                  initialValue: AuthController.mobile,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Mobile ',
                    // prefixIcon: Icon(Icons.phone_android),
                    suffixIcon: Icon(Icons.phone_android),
                  ),
                ),
                UIHelper.verticalSpaceLarge(),
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    onPressed: () {
                      controller.isOtp.value = false;
                    },
                    child: Text(
                      "Resend OTP",
                      textAlign: TextAlign.end,
                      style: TextStyles.primary14Bold,
                    ),
                  ),
                ),
                ElevatedButton(
                  child: Text(
                    'Send OTP',
                    style: TextStyles.primary16W500,
                  ),
                  onPressed: () {
                    print('Pressed');
                    controller.isOtp.value = true;
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(4.0),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OtpView extends GetView<AuthController> {
  final _formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: FormBuilder(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                UIHelper.verticalSpaceExtraLarge(),
                Text(
                  'Enter (6) six degit Otp which we have sent to your mobile, Example 123456',
                  style: TextStyles.primary16W500,
                ),
                UIHelper.verticalSpaceLarge(),
                FormBuilderTextField(
                  name: 'otp',
                  initialValue: "123456",
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'OTP ',
                    suffixIcon: Icon(Icons.phone_android),
                  ),
                ),
                UIHelper.verticalSpaceLarge(),
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    onPressed: () {
                      controller.isOtp.value = false;
                    },
                    child: Text(
                      "Change Mobile",
                      textAlign: TextAlign.end,
                      style: TextStyles.primary14Bold,
                    ),
                  ),
                ),
                ElevatedButton(
                  child: Text(
                    'Login',
                    style: TextStyles.primary16W500,
                  ),
                  onPressed: () {
                    print('Pressed');
                    Get.toNamed(Routes.HOME);
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(4.0),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
