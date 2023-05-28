// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      avatar: json['avatar'] as String? ?? '',
      phoneNumber: json['phoneNumber'] as String? ?? '',
      address: json['address'] as String?,
      city: json['city'] == null
          ? null
          : City.fromJson(json['city'] as Map<String, dynamic>),
      cityId: json['cityId'] as int?,
      whatsapp: json['whatsapp'] as String?,
      password: json['password'] as String?,
      description: json['description'] as String?,
      createdAt: json['createdAt'] as String?,
      accountType:
          $enumDecodeNullable(_$AccountTypeEnumMap, json['accountType']) ??
              AccountType.Client,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'avatar': instance.avatar,
      'phoneNumber': instance.phoneNumber,
      'address': instance.address,
      'city': instance.city,
      'cityId': instance.cityId,
      'whatsapp': instance.whatsapp,
      'password': instance.password,
      'description': instance.description,
      'createdAt': instance.createdAt,
      'accountType': _$AccountTypeEnumMap[instance.accountType]!,
    };

const _$AccountTypeEnumMap = {
  AccountType.Client: 'Client',
  AccountType.Agent: 'Agent',
  AccountType.Agency: 'Agency',
};
