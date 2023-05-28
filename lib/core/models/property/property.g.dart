// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Property _$$_PropertyFromJson(Map<String, dynamic> json) => _$_Property(
      json['id'] as String,
      json['title'] as String,
      json['thumbnail'] as String,
      json['images'] as int,
      json['slug'] as String,
      json['userId'] as String,
      User.fromJson(json['user'] as Map<String, dynamic>),
      (json['price'] as num).toDouble(),
      $enumDecode(_$PropertyForEnumMap, json['for']),
      json['address'] as String,
      json['typeId'] as int,
      PropertyType.fromJson(json['type'] as Map<String, dynamic>),
      city: json['city'] == null
          ? null
          : City.fromJson(json['city'] as Map<String, dynamic>),
      cityId: json['cityId'] as int?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longtitude: (json['longtitude'] as num?)?.toDouble(),
      whatsapp: json['whatsapp'] as String?,
      password: json['password'] as String?,
      description: json['description'] as String?,
      createdAt: json['createdAt'] as String?,
      deletedAt: json['deletedAt'] as String?,
      area: (json['area'] as num?)?.toDouble(),
      rooms: json['rooms'] as int?,
      bathrooms: json['bathrooms'] as int?,
      status: $enumDecodeNullable(_$PropertyStatusEnumMap, json['status']) ??
          PropertyStatus.Active,
    );

Map<String, dynamic> _$$_PropertyToJson(_$_Property instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'thumbnail': instance.thumbnail,
      'images': instance.images,
      'slug': instance.slug,
      'userId': instance.userId,
      'user': instance.user,
      'price': instance.price,
      'for_': _$PropertyForEnumMap[instance.for_]!,
      'address': instance.address,
      'typeId': instance.typeId,
      'type': instance.type,
      'city': instance.city,
      'cityId': instance.cityId,
      'latitude': instance.latitude,
      'longtitude': instance.longtitude,
      'whatsapp': instance.whatsapp,
      'password': instance.password,
      'description': instance.description,
      'createdAt': instance.createdAt,
      'deletedAt': instance.deletedAt,
      'area': instance.area,
      'rooms': instance.rooms,
      'bathrooms': instance.bathrooms,
      'status': _$PropertyStatusEnumMap[instance.status]!,
    };

const _$PropertyForEnumMap = {
  PropertyFor.Sale: 'Sale',
  PropertyFor.Rent: 'Rent',
};

const _$PropertyStatusEnumMap = {
  PropertyStatus.Active: 'Active',
  PropertyStatus.Inactive: 'Inactive',
  PropertyStatus.Pending: 'Pending',
  PropertyStatus.Sold: 'Sold',
  PropertyStatus.Rented: 'Rented',
  PropertyStatus.Blocked: 'Blocked',
};

_$_PropertyType _$$_PropertyTypeFromJson(Map<String, dynamic> json) =>
    _$_PropertyType(
      json['id'] as int,
      json['name_en'] as String,
      json['name_fr'] as String,
      json['name_ar'] as String,
    );

Map<String, dynamic> _$$_PropertyTypeToJson(_$_PropertyType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name_en': instance.name_en,
      'name_fr': instance.name_fr,
      'name_ar': instance.name_ar,
    };
