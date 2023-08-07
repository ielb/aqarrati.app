import 'package:freezed_annotation/freezed_annotation.dart';

part 'type.freezed.dart';
part 'type.g.dart';

@freezed
class Type with _$Type {
  const factory Type(
    int id,
    String name_en,
    String name_fr,
    String name_ar, {
    int? propertyCount,
  }) = _Type;

  factory Type.fromJson(Map<String, dynamic> json) => _$TypeFromJson(json);
}
