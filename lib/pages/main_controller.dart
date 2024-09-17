import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shopping/resources/app_icons.dart';
import 'package:svg_flutter/svg.dart';

abstract class ListItem {}

class ProductItem extends ListItem {
  final String imageUrl;
  final String title;
  final String subTitle;

  ProductItem({required this.imageUrl, required this.title, required this.subTitle});
}

class HeaderItem extends ListItem {
  final String title;
  final SvgPicture? leftIcon;

  HeaderItem({required this.title, required this.leftIcon});
}

class DividerItem extends ListItem {}

class MainController extends GetxController {
  RxList<ListItem> listItems = RxList();

  void initItems() {
    listItems.addAll([
      ProductItem(
          imageUrl: 'https://t4.ftcdn.net/jpg/05/49/86/39/360_F_549863991_6yPKI08MG7JiZX83tMHlhDtd6XLFAMce.jpg',
          title: 'Women’s Casual Wear',
          subTitle: 'Checked Single-Breasted Blazer'),
      HeaderItem(title: 'Apply Coupons', leftIcon: AppIcons.couponIcon()),
      DividerItem(),
      HeaderItem(title: 'Order Payment Details', leftIcon: null),
    ]);
  }
}
