// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductDto _$ProductDtoFromJson(Map<String, dynamic> json) => ProductDto(
      id: json['id'] as String,
      categoryId: (json['categoryId'] as num?)?.toInt(),
      name: json['name'] as String,
      imageUrls:
          (json['imageUrls'] as List<dynamic>).map((e) => e as String).toList(),
      packageVolume: (json['packageVolume'] as num).toInt(),
      unitOfMeasurement: json['unitOfMeasurement'] as String,
      ingredients: json['ingredients'] as String,
      description: json['description'] as String,
      barcode: json['barcode'] as String,
    );

Map<String, dynamic> _$ProductDtoToJson(ProductDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'categoryId': instance.categoryId,
      'name': instance.name,
      'imageUrls': instance.imageUrls,
      'packageVolume': instance.packageVolume,
      'unitOfMeasurement': instance.unitOfMeasurement,
      'ingredients': instance.ingredients,
      'description': instance.description,
      'barcode': instance.barcode,
    };
