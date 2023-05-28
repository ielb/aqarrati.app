// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_City _$$_CityFromJson(Map<String, dynamic> json) => _$_City(
      id: json['id'] as int? ?? 1,
      name_en: json['name_en'] as String? ?? 'Casablanca',
      name_fr: json['name_fr'] as String? ?? 'Casablanca',
      name_ar: json['name_ar'] as String? ?? 'Casablanca',
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$_CityToJson(_$_City instance) => <String, dynamic>{
      'id': instance.id,
      'name_en': instance.name_en,
      'name_fr': instance.name_fr,
      'name_ar': instance.name_ar,
      'image': instance.image,
    };
