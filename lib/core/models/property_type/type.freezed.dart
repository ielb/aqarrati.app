// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Type _$TypeFromJson(Map<String, dynamic> json) {
  return _Type.fromJson(json);
}

/// @nodoc
mixin _$Type {
  int get id => throw _privateConstructorUsedError;
  String get name_en => throw _privateConstructorUsedError;
  String get name_fr => throw _privateConstructorUsedError;
  String get name_ar => throw _privateConstructorUsedError;
  int? get propertyCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TypeCopyWith<Type> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeCopyWith<$Res> {
  factory $TypeCopyWith(Type value, $Res Function(Type) then) =
      _$TypeCopyWithImpl<$Res, Type>;
  @useResult
  $Res call(
      {int id,
      String name_en,
      String name_fr,
      String name_ar,
      int? propertyCount});
}

/// @nodoc
class _$TypeCopyWithImpl<$Res, $Val extends Type>
    implements $TypeCopyWith<$Res> {
  _$TypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name_en = null,
    Object? name_fr = null,
    Object? name_ar = null,
    Object? propertyCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name_en: null == name_en
          ? _value.name_en
          : name_en // ignore: cast_nullable_to_non_nullable
              as String,
      name_fr: null == name_fr
          ? _value.name_fr
          : name_fr // ignore: cast_nullable_to_non_nullable
              as String,
      name_ar: null == name_ar
          ? _value.name_ar
          : name_ar // ignore: cast_nullable_to_non_nullable
              as String,
      propertyCount: freezed == propertyCount
          ? _value.propertyCount
          : propertyCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TypeCopyWith<$Res> implements $TypeCopyWith<$Res> {
  factory _$$_TypeCopyWith(_$_Type value, $Res Function(_$_Type) then) =
      __$$_TypeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name_en,
      String name_fr,
      String name_ar,
      int? propertyCount});
}

/// @nodoc
class __$$_TypeCopyWithImpl<$Res> extends _$TypeCopyWithImpl<$Res, _$_Type>
    implements _$$_TypeCopyWith<$Res> {
  __$$_TypeCopyWithImpl(_$_Type _value, $Res Function(_$_Type) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name_en = null,
    Object? name_fr = null,
    Object? name_ar = null,
    Object? propertyCount = freezed,
  }) {
    return _then(_$_Type(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == name_en
          ? _value.name_en
          : name_en // ignore: cast_nullable_to_non_nullable
              as String,
      null == name_fr
          ? _value.name_fr
          : name_fr // ignore: cast_nullable_to_non_nullable
              as String,
      null == name_ar
          ? _value.name_ar
          : name_ar // ignore: cast_nullable_to_non_nullable
              as String,
      propertyCount: freezed == propertyCount
          ? _value.propertyCount
          : propertyCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Type implements _Type {
  const _$_Type(this.id, this.name_en, this.name_fr, this.name_ar,
      {this.propertyCount});

  factory _$_Type.fromJson(Map<String, dynamic> json) => _$$_TypeFromJson(json);

  @override
  final int id;
  @override
  final String name_en;
  @override
  final String name_fr;
  @override
  final String name_ar;
  @override
  final int? propertyCount;

  @override
  String toString() {
    return 'Type(id: $id, name_en: $name_en, name_fr: $name_fr, name_ar: $name_ar, propertyCount: $propertyCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Type &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name_en, name_en) || other.name_en == name_en) &&
            (identical(other.name_fr, name_fr) || other.name_fr == name_fr) &&
            (identical(other.name_ar, name_ar) || other.name_ar == name_ar) &&
            (identical(other.propertyCount, propertyCount) ||
                other.propertyCount == propertyCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name_en, name_fr, name_ar, propertyCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TypeCopyWith<_$_Type> get copyWith =>
      __$$_TypeCopyWithImpl<_$_Type>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TypeToJson(
      this,
    );
  }
}

abstract class _Type implements Type {
  const factory _Type(final int id, final String name_en, final String name_fr,
      final String name_ar,
      {final int? propertyCount}) = _$_Type;

  factory _Type.fromJson(Map<String, dynamic> json) = _$_Type.fromJson;

  @override
  int get id;
  @override
  String get name_en;
  @override
  String get name_fr;
  @override
  String get name_ar;
  @override
  int? get propertyCount;
  @override
  @JsonKey(ignore: true)
  _$$_TypeCopyWith<_$_Type> get copyWith => throw _privateConstructorUsedError;
}
