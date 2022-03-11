import 'package:appwrite_project/theme/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/index.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({
    Key? key,
    required this.post,
  }) : super(key: key);

  final post;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 5,
            child: Center(
              child: Image.asset(
                "${post['image']}",
                fit: BoxFit.contain,
              ),
            ),
          ),
          UIHelper.verticalSpaceLarge(),
          Wrap(
            children: [
              Text(
                "₹ ${post['price']}",
                style: TextStyles.primary16W500
                    .copyWith(fontWeight: FontWeight.w600),
              ),
            ],
          ),
          UIHelper.verticalSpaceSmall(),
          Text(
            "${post['title']}",
            maxLines: 2,
            style: TextStyles.primary14,
          ),
          Spacer(),
          Wrap(
            children: [
              Icon(
                Icons.location_on,
                color: Colors.grey.shade500,
                size: 15,
              ),
              Text(
                "${post['location']}",
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
