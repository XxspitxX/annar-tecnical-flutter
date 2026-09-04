// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_product_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddProductRequest _$AddProductRequestFromJson(Map<String, dynamic> json) =>
    _AddProductRequest(
      title: json['title'] as String,
      description: json['description'] as String?,
      category: json['category'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      stock: (json['stock'] as num?)?.toInt(),
      brand: json['brand'] as String?,
      sku: json['sku'] as String?,
    );

Map<String, dynamic> _$AddProductRequestToJson(_AddProductRequest instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'category': instance.category,
      'price': instance.price,
      'stock': instance.stock,
      'brand': instance.brand,
      'sku': instance.sku,
    };
