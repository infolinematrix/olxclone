import 'package:appwrite_project/utils/index.dart';
import 'package:flutter/material.dart';

import '../../../../../theme/index.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: ThemeColors.borderColorEnable,
            width: 1.0,
          ),
        ),
      ),
      child: Row(
        children: [
          // CircleAvatar(
          //   radius: 30.0,
          //   backgroundImage:
          //       Image.asset("assets/icons/user.png"),
          //   backgroundColor: Colors.transparent,
          // ),
          CircleAvatar(
            radius: 25,
            child: ClipOval(
              child: Image.asset(
                'assets/icons/user.png',
              ),
            ),
            backgroundColor: Colors.transparent,
          ),
          UIHelper.horizontalSpaceMedium(),
          Wrap(
            direction: Axis.vertical,
            children: [
              Text(
                "Subha Sundar Das",
                style: Theme.of(context).textTheme.headline6,
              ),
              Text("9832893116 - Champasari, Siliguri"),
            ],
          ),
          Spacer(),
          TextButton(onPressed: () {}, child: Text("Update"))
        ],
      ),
    );
  }
}
