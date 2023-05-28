import 'package:core_template/core/models/city/city.dart';
import 'package:core_template/core/models/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'property.freezed.dart';
part 'property.g.dart';

enum PropertyFor { Sale, Rent }

enum PropertyStatus {
  Active,
  Inactive,
  Pending,
  Sold,
  Rented,
  Blocked,
}

@freezed
class Property with _$Property {
  const factory Property(
    String id,
    String title,
    String thumbnail,
    int images,
    String slug,
    String userId,
    User user,
    double price,
    PropertyFor for_,
    String address,
    int typeId,
    PropertyType type, {
    City? city,
    int? cityId,
    double? latitude,
    double? longtitude,
    String? whatsapp,
    String? password,
    String? description,
    String? createdAt,
    String? deletedAt,
    double? area,
    int? rooms,
    int? bathrooms,
    @Default(PropertyStatus.Active) PropertyStatus status,
  }) = _Property;

  factory Property.fromJson(Map<String, dynamic> json) =>
      _$PropertyFromJson(json);
}

@freezed
class PropertyType with _$PropertyType {
  const factory PropertyType(
    int id,
    String name_en,
    String name_fr,
    String name_ar,
  ) = _PropertyType;

  factory PropertyType.fromJson(Map<String, dynamic> json) =>
      _$PropertyTypeFromJson(json);
}
