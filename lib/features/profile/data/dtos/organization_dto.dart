import 'package:ez_sauda/features/profile/domain/models/organization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'organization_dto.g.dart';

@JsonSerializable()
class OrganizationDto implements Organization {
  @override
  final String id;
  @override
  final String bin;
  @override
  final String name;

  OrganizationDto({
    required this.id,
    required this.name,
    required this.bin,
  });

  factory OrganizationDto.fromJson(Map<String, dynamic> json) =>
      _$OrganizationDtoFromJson(json);
}
