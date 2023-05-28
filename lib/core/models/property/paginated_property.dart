import 'package:core_template/core/models/property/property.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginated_property.freezed.dart';
part 'paginated_property.g.dart';

@freezed
class PaginatedProperty with _$PaginatedProperty {
  const factory PaginatedProperty(
    List<Property> data,
    Meta? meta,
  ) = _PaginatedProperty;

  factory PaginatedProperty.fromJson(Map<String, dynamic> json) =>
      _$PaginatedPropertyFromJson(json);
}

@freezed
class Meta with _$Meta {
  const factory Meta(
    int total,
    int lastPage,
    int currentPage,
    int perPage,
    int? prev,
    int? next,
  ) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}
