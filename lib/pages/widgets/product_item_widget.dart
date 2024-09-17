import 'package:flutter/material.dart';
import 'package:shopping/pages/main_controller.dart';

class ProductItemWidget extends StatelessWidget {
  const ProductItemWidget({super.key, required this.item});

  final ProductItem item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 123,
          height: 150,
          child: Image.network(
            item.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Expanded(
            child: Container(
          child: Column(
            children: [
              Text(item.title),
              SizedBox(
                height: 20,
              ),
              Text(item.subTitle),
            ],
          ),
        ))
      ],
    );
  }
}
