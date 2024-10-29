import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:presentation/home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    Get.put(HomeController());
    HomeController controller = Get.find();
    controller.getUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
