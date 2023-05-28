import 'package:core_template/core/models/city/city.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

enum AccountType { Client, Agent, Agency }

@freezed
class User with _$User {
  const factory User({
    @Default('') String id,
    @Default('') String name,
    @Default('') String avatar,
    @Default('') String phoneNumber,
    String? address,
    City? city,
    int? cityId,
    String? whatsapp,
    String? password,
    String? description,
    String? createdAt,
    @Default(AccountType.Client) AccountType accountType,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
