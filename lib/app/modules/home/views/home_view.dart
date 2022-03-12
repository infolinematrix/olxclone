import 'package:appwrite_project/app/data/dummy.dart';
import 'package:appwrite_project/app/routes/app_pages.dart';
import 'package:appwrite_project/theme/index.dart';
import 'package:appwrite_project/utils/geo_location.dart';
import 'package:appwrite_project/utils/index.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../shared/bottom_bar.dart';

import '../../../shared/post_widget.dart';
import '../../location/controllers/location_controller.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 20,
        leading: Icon(
          Icons.place,
          color: Colors.black,
        ).marginOnly(left: 8.0),
        title: InkWell(
          onTap: () {
            Get.toNamed(Routes.LOCATION);
          },
          child: Obx(() {
            return InkWell(
              onTap: () {
                Get.toNamed(Routes.LOCATION);
              },
              child: Row(
                children: [
                  Text(
                      "${LocationController.to.cityModel.value.city}, ${LocationController.to.cityModel.value.state}"),
                  Icon(
                    Icons.expand_more,
                    size: 32,
                    color: ThemeColors.appBarColorDark,
                  )
                ],
              ),
            );
          }),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            icon: Icon(
              Icons.lightbulb_sharp,
              color: Colors.black,
            ),
            onPressed: () {
              // do something
            },
          ),
          Obx(() => Switch(
                value: controller.isDarkMode.value,
                onChanged: (bool isOn) {
                  controller.themeChange();
                },
                activeColor: ThemeColors.primaryColor,
                inactiveTrackColor: ThemeColors.borderColorEnable,
                inactiveThumbColor: ThemeColors.borderColorDisable,
              ))
        ],
      ),
      bottomNavigationBar: BottomBar(),
      floatingActionButton: SizedBox(
        height: 50,
        child: RawMaterialButton(
          onPressed: () {
            Get.toNamed(Routes.POST_CREATE);
          },
          elevation: 2.0,
          fillColor: ThemeColors.primaryColor,
          child: Icon(
            Icons.add,
            // size: 35.0,
            color: ThemeColors.backgroundColor,
          ),
          padding: EdgeInsets.all(15.0),
          shape: CircleBorder(),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          slivers: <Widget>[
            SliverPersistentHeader(
              pinned: true,
              floating: false,
              delegate: Delegate(),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  BannerWidget(),
                  UIHelper.verticalSpaceMedium(),
                  Container(
                    height: 260,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          "Sponsored advertisements",
                          style: TextStyles.primary18W700,
                        ),
                        UIHelper.verticalSpaceSmall(),
                        Expanded(
                          child: ListView.builder(
                            itemCount: 10,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) {
                              var post = DummyData.posts()[index];
                              return SizedBox(
                                width: Get.width * .40,
                                child: Card(
                                  color: Colors.lightBlue.shade50,
                                  elevation: 0,
                                  child: PostWidget(post: post),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  UIHelper.verticalSpaceMedium(),
                ],
              ),
            ),
            SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 0,
                crossAxisSpacing: 0,
                childAspectRatio: 0.80,
              ),
              delegate:
                  SliverChildBuilderDelegate((BuildContext context, int index) {
                var post = DummyData.posts()[index];
                return Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    ),
                  ),
                  child: PostWidget(post: post),
                );
              }, childCount: DummyData.posts().length),
            )
          ],
        ),
      ),
    );
  }
}

class BannerWidget extends StatelessWidget {
  const BannerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: Get.width * .80,
            color: Colors.grey.shade200,
            child: SizedBox.expand(
              child: Image.asset("assets/images/banner1.jpg"),
            ).marginOnly(right: 8),
          );
        },
      ),
    );
  }
}

class Delegate extends SliverPersistentHeaderDelegate {
  Delegate();

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      // padding: EdgeInsets.all(16),
      color: Get.isDarkMode == false
          ? ThemeColors.backgroundColor
          : ThemeColors.backgroundColorDark,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: DummyData.categories().length,
        itemBuilder: (BuildContext context, int index) {
          var item = DummyData.categories()[index];
          return Container(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
            width: Get.width * .22,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40,
                  child: Image.asset(
                    "${item['image']}",
                  ),
                ),
                UIHelper.verticalSpaceSmall(),
                Text(
                  "${item['title']}",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  double get maxExtent => 90;

  @override
  double get minExtent => 90;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
