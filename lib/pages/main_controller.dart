import 'dart:async';
import 'dart:convert';

import 'package:get/get.dart';
import 'package:shopping/models/user.dart';
import 'package:shopping/models/user_response.dart';
import 'package:shopping/resources/app_icons.dart';
import 'package:svg_flutter/svg.dart';
import 'package:http/http.dart' as http;

var jsonObjectStatic = {"first_name": "Vasile", "last_name": "Barbaros"};

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

  StreamController<String> streamController = StreamController<String>();
  late StreamSubscription<String> streamSubscription;

  void initStream() {
    Stream<String> stream = streamController.stream;

    streamSubscription = stream.listen((value) {
      print("new value: $value");
    });

    streamController.sink.add("Value1");

    streamSubscription.cancel();

    Future.delayed(Duration(seconds: 2)).then((value) {
      streamController.sink.add("Value2");

      stream.listen((value) {});
    });
  }

  void getUsers() {
    http.get(Uri.parse('https://dummyjson.com/users')).then((value) {
      UserResponse userResponse = UserResponse.fromJson(jsonDecode(value.body));
      print('userResponse $userResponse');

      userResponse.userList.forEach((user){
        print('user: ${user.firstName}');
      });
    });
  }

  void serialize() {
    User user = User(firstName: "Ion", lastName: "Barbaros");
    String json = jsonEncode(user);
    print(json);

    var userObject = User.fromJson((jsonObjectStatic));

    print('userObject ${userObject.firstName}');
  }

  Future<void> initItems() async {
    print('Init items start');
    await Future.delayed(Duration(seconds: 3));
    listItems.addAll([
      ProductItem(
          imageUrl: 'https://t4.ftcdn.net/jpg/05/49/86/39/360_F_549863991_6yPKI08MG7JiZX83tMHlhDtd6XLFAMce.jpg',
          title: 'Women’s Casual Wear',
          subTitle: 'Checked Single-Breasted Blazer'),
      HeaderItem(title: 'Apply Coupons', leftIcon: AppIcons.couponIcon()),
      DividerItem(),
      HeaderItem(title: 'Order Payment Details', leftIcon: null),
    ]);

    listItems.addAll(List.generate(1000, (index) {
      return ProductItem(
          imageUrl: 'https://t4.ftcdn.net/jpg/05/49/86/39/360_F_549863991_6yPKI08MG7JiZX83tMHlhDtd6XLFAMce.jpg',
          title: 'Women’s Casual Wear',
          subTitle: 'Checked Single-Breasted Blazer');
    }).toList());

    /*  List.generate(1000, (index){

      return ProductItem(
          imageUrl: 'https://t4.ftcdn.net/jpg/05/49/86/39/360_F_549863991_6yPKI08MG7JiZX83tMHlhDtd6XLFAMce.jpg',
          title: 'Women’s Casual Wear',
          subTitle: 'Checked Single-Breasted Blazer');
    }).toList().forEach((index){

    });*/
  }
}
