import 'package:flutter/material.dart';
import 'package:shopping/pages/main_controller.dart';

class HeaderItemWidget extends StatelessWidget {
  final HeaderItem item;

  const HeaderItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 35, bottom: 35, left: 22),
      child: Row(
        children: [
          if (item.leftIcon != null)
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: item.leftIcon!,
            ),
          Text(item.title)
        ],
      ),
    );
  }
}
