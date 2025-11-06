// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_cart_products_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCartProductsResponse _$GetCartProductsResponseFromJson(
        Map<String, dynamic> json) =>
    GetCartProductsResponse(
      (json['items'] as List<dynamic>)
          .map((e) => CartProductDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['totalPrice'] as num).toDouble(),
    );
