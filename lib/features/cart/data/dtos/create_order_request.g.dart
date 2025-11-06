// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_order_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$CreateOrderRequestToJson(CreateOrderRequest instance) =>
    <String, dynamic>{
      'distributorId': instance.distributorId,
      'items': instance.items,
      'deliveryDate': instance.deliveryDate.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
    };
