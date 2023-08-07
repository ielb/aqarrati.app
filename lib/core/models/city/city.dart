import 'package:freezed_annotation/freezed_annotation.dart';

part 'city.freezed.dart';
part 'city.g.dart';

@freezed
class City with _$City {
  const factory City({
    @Default(1) int id,
    @Default('Casablanca') String name_en,
    @Default('Casablanca') String name_fr,
    @Default('Casablanca') String name_ar,
    String? image,
    @Default(0) int propertyCount,
  }) = _City;

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}
