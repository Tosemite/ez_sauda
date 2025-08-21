import 'package:ez_sauda/features/profile/data/dtos/organization_dto.dart';
import 'package:ez_sauda/features/profile/domain/models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.g.dart';

@JsonSerializable()
class UserDto implements User {
  @override
  final String id;
  @override
  final String username;
  @override
  final String phoneNumber;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final OrganizationDto organization;

  UserDto({
    required this.id,
    required this.username,
    required this.phoneNumber,
    required this.firstName,
    required this.lastName,
    required this.organization,
  });

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  @override
  // TODO: implement imageUrl
  String get imageUrl =>
      'https://images.pexels.com/photos/32935727/pexels-photo-32935727.jpeg?_gl=1*ifxe3c*_ga*NTU3MjMyMDQzLjE3NTMyNjM2ODU.*_ga_8JE65Q40S6*czE3NTMyNjM2ODUkbzEkZzEkdDE3NTMyNjM3MjEkajI0JGwwJGgw';
}
