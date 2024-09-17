import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping/pages/main_controller.dart';
import 'package:shopping/pages/widgets/divider_item_widget.dart';
import 'package:shopping/pages/widgets/header_item_widget.dart';
import 'package:shopping/pages/widgets/product_item_widget.dart';
import 'package:shopping/resources/app_icons.dart';
import 'package:shopping/widgets/main_app_bar_widget.dart';

import '../resources/app_strings.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    super.initState();
    Get.put(MainController());

    controller.initItems();
  }

  MainController get controller => Get.find<MainController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        titleSpacing: 0,
        leadingWidth: 0,
        automaticallyImplyLeading: false,
        title: Container(
          height: kToolbarHeight,
          width: double.infinity,
          color: Colors.blue,
          child: Container(
            width: double.infinity,
            height: kToolbarHeight,
            color: Colors.red,
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcons.backIcon(),
                Text(AppStrings.shoppingBag),
                AppIcons.favoriteIcon(),
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Material(
          child: Container(
            color: Colors.white,
            width: double.infinity,
            height: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Obx(
                  () => Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        var item = controller.listItems[index];
                        debugPrint('each item $item');
                        if (item is ProductItem) {
                          return ProductItemWidget(
                            item: item,
                          );
                        } else if (item is DividerItem) {
                          return const DividerItemWidget();
                        } else if (item is HeaderItem) {
                          return HeaderItemWidget(item: item);
                        }
                        return Container();
                      },
                      itemCount: controller.listItems.length,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    //controller.changeText('newText is: ${DateTime.now()}');
                  },
                  child: Container(
                    width: 30,
                    height: 30,
                    color: Colors.yellow,
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
