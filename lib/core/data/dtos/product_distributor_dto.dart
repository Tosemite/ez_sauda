import 'package:ez_sauda/features/product/domain/models/product_distributor.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_distributor_dto.g.dart';

@JsonSerializable()
class ProductDistributorDto implements ProductDistributor {

  @override
  final String distributorId;
  @override
  final String distributorName;
  @override
  final String logoUrl;
  @override
  final double priceWithVat;
  @override
  final double priceWithoutVat;
  @override
  final bool isReturnable;
  @override
  final bool isExchangeable;
  @override
  final bool isActive;
  @override
  final DateTime nearestDeliveryDate;

  ProductDistributorDto({
    required this.distributorId,
    required this.distributorName,
    required this.logoUrl,
    required this.priceWithVat,
    required this.priceWithoutVat,
    required this.isReturnable,
    required this.isExchangeable,
    required this.isActive,
    required this.nearestDeliveryDate,
  });

  factory ProductDistributorDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDistributorDtoFromJson(json);
}
