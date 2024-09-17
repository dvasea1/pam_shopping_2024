import 'package:flutter/material.dart';
import 'package:shopping/resources/app_icons.dart';
import 'package:shopping/resources/app_strings.dart';

class MainAppBarWidget extends StatelessWidget {
  const MainAppBarWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kToolbarHeight,
      width: double.infinity,

      child: Container(
        color: Colors.white,
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
    );
  }
}
