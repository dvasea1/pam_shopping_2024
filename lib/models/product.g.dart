// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      imageUrl: json['image_url'] as String,
      price: (json['price'] as num).toInt(),
      category: json['category'] as String,
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'image_url': instance.imageUrl,
      'price': instance.price,
      'category': instance.category,
    };
