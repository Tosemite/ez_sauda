// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_distributor_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductDistributorDto _$ProductDistributorDtoFromJson(
        Map<String, dynamic> json) =>
    ProductDistributorDto(
      distributorId: json['distributorId'] as String,
      distributorName: json['distributorName'] as String,
      logoUrl: json['logoUrl'] as String,
      priceWithVat: (json['priceWithVat'] as num).toDouble(),
      priceWithoutVat: (json['priceWithoutVat'] as num).toDouble(),
      isReturnable: json['isReturnable'] as bool,
      isExchangeable: json['isExchangeable'] as bool,
      isActive: json['isActive'] as bool,
      nearestDeliveryDate:
          DateTime.parse(json['nearestDeliveryDate'] as String),
    );

Map<String, dynamic> _$ProductDistributorDtoToJson(
        ProductDistributorDto instance) =>
    <String, dynamic>{
      'distributorId': instance.distributorId,
      'distributorName': instance.distributorName,
      'logoUrl': instance.logoUrl,
      'priceWithVat': instance.priceWithVat,
      'priceWithoutVat': instance.priceWithoutVat,
      'isReturnable': instance.isReturnable,
      'isExchangeable': instance.isExchangeable,
      'isActive': instance.isActive,
      'nearestDeliveryDate': instance.nearestDeliveryDate.toIso8601String(),
    };
