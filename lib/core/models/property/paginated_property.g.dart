// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_property.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaginatedProperty _$$_PaginatedPropertyFromJson(Map<String, dynamic> json) =>
    _$_PaginatedProperty(
      (json['data'] as List<dynamic>)
          .map((e) => Property.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PaginatedPropertyToJson(
        _$_PaginatedProperty instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };

_$_Meta _$$_MetaFromJson(Map<String, dynamic> json) => _$_Meta(
      json['total'] as int,
      json['lastPage'] as int,
      json['currentPage'] as int,
      json['perPage'] as int,
      json['prev'] as int?,
      json['next'] as int?,
    );

Map<String, dynamic> _$$_MetaToJson(_$_Meta instance) => <String, dynamic>{
      'total': instance.total,
      'lastPage': instance.lastPage,
      'currentPage': instance.currentPage,
      'perPage': instance.perPage,
      'prev': instance.prev,
      'next': instance.next,
    };
