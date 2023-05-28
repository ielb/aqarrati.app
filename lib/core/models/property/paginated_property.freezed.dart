// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_property.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaginatedProperty _$PaginatedPropertyFromJson(Map<String, dynamic> json) {
  return _PaginatedProperty.fromJson(json);
}

/// @nodoc
mixin _$PaginatedProperty {
  List<Property> get data => throw _privateConstructorUsedError;
  Meta? get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginatedPropertyCopyWith<PaginatedProperty> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedPropertyCopyWith<$Res> {
  factory $PaginatedPropertyCopyWith(
          PaginatedProperty value, $Res Function(PaginatedProperty) then) =
      _$PaginatedPropertyCopyWithImpl<$Res, PaginatedProperty>;
  @useResult
  $Res call({List<Property> data, Meta? meta});

  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$PaginatedPropertyCopyWithImpl<$Res, $Val extends PaginatedProperty>
    implements $PaginatedPropertyCopyWith<$Res> {
  _$PaginatedPropertyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Property>,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $MetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PaginatedPropertyCopyWith<$Res>
    implements $PaginatedPropertyCopyWith<$Res> {
  factory _$$_PaginatedPropertyCopyWith(_$_PaginatedProperty value,
          $Res Function(_$_PaginatedProperty) then) =
      __$$_PaginatedPropertyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Property> data, Meta? meta});

  @override
  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$_PaginatedPropertyCopyWithImpl<$Res>
    extends _$PaginatedPropertyCopyWithImpl<$Res, _$_PaginatedProperty>
    implements _$$_PaginatedPropertyCopyWith<$Res> {
  __$$_PaginatedPropertyCopyWithImpl(
      _$_PaginatedProperty _value, $Res Function(_$_PaginatedProperty) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? meta = freezed,
  }) {
    return _then(_$_PaginatedProperty(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Property>,
      freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaginatedProperty implements _PaginatedProperty {
  const _$_PaginatedProperty(final List<Property> data, this.meta)
      : _data = data;

  factory _$_PaginatedProperty.fromJson(Map<String, dynamic> json) =>
      _$$_PaginatedPropertyFromJson(json);

  final List<Property> _data;
  @override
  List<Property> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final Meta? meta;

  @override
  String toString() {
    return 'PaginatedProperty(data: $data, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaginatedProperty &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaginatedPropertyCopyWith<_$_PaginatedProperty> get copyWith =>
      __$$_PaginatedPropertyCopyWithImpl<_$_PaginatedProperty>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaginatedPropertyToJson(
      this,
    );
  }
}

abstract class _PaginatedProperty implements PaginatedProperty {
  const factory _PaginatedProperty(
      final List<Property> data, final Meta? meta) = _$_PaginatedProperty;

  factory _PaginatedProperty.fromJson(Map<String, dynamic> json) =
      _$_PaginatedProperty.fromJson;

  @override
  List<Property> get data;
  @override
  Meta? get meta;
  @override
  @JsonKey(ignore: true)
  _$$_PaginatedPropertyCopyWith<_$_PaginatedProperty> get copyWith =>
      throw _privateConstructorUsedError;
}

Meta _$MetaFromJson(Map<String, dynamic> json) {
  return _Meta.fromJson(json);
}

/// @nodoc
mixin _$Meta {
  int get total => throw _privateConstructorUsedError;
  int get lastPage => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;
  int? get prev => throw _privateConstructorUsedError;
  int? get next => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaCopyWith<Meta> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaCopyWith<$Res> {
  factory $MetaCopyWith(Meta value, $Res Function(Meta) then) =
      _$MetaCopyWithImpl<$Res, Meta>;
  @useResult
  $Res call(
      {int total,
      int lastPage,
      int currentPage,
      int perPage,
      int? prev,
      int? next});
}

/// @nodoc
class _$MetaCopyWithImpl<$Res, $Val extends Meta>
    implements $MetaCopyWith<$Res> {
  _$MetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? lastPage = null,
    Object? currentPage = null,
    Object? perPage = null,
    Object? prev = freezed,
    Object? next = freezed,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      prev: freezed == prev
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as int?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MetaCopyWith<$Res> implements $MetaCopyWith<$Res> {
  factory _$$_MetaCopyWith(_$_Meta value, $Res Function(_$_Meta) then) =
      __$$_MetaCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int total,
      int lastPage,
      int currentPage,
      int perPage,
      int? prev,
      int? next});
}

/// @nodoc
class __$$_MetaCopyWithImpl<$Res> extends _$MetaCopyWithImpl<$Res, _$_Meta>
    implements _$$_MetaCopyWith<$Res> {
  __$$_MetaCopyWithImpl(_$_Meta _value, $Res Function(_$_Meta) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? lastPage = null,
    Object? currentPage = null,
    Object? perPage = null,
    Object? prev = freezed,
    Object? next = freezed,
  }) {
    return _then(_$_Meta(
      null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
      null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      null == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      freezed == prev
          ? _value.prev
          : prev // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Meta implements _Meta {
  const _$_Meta(this.total, this.lastPage, this.currentPage, this.perPage,
      this.prev, this.next);

  factory _$_Meta.fromJson(Map<String, dynamic> json) => _$$_MetaFromJson(json);

  @override
  final int total;
  @override
  final int lastPage;
  @override
  final int currentPage;
  @override
  final int perPage;
  @override
  final int? prev;
  @override
  final int? next;

  @override
  String toString() {
    return 'Meta(total: $total, lastPage: $lastPage, currentPage: $currentPage, perPage: $perPage, prev: $prev, next: $next)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Meta &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.prev, prev) || other.prev == prev) &&
            (identical(other.next, next) || other.next == next));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, total, lastPage, currentPage, perPage, prev, next);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MetaCopyWith<_$_Meta> get copyWith =>
      __$$_MetaCopyWithImpl<_$_Meta>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MetaToJson(
      this,
    );
  }
}

abstract class _Meta implements Meta {
  const factory _Meta(
      final int total,
      final int lastPage,
      final int currentPage,
      final int perPage,
      final int? prev,
      final int? next) = _$_Meta;

  factory _Meta.fromJson(Map<String, dynamic> json) = _$_Meta.fromJson;

  @override
  int get total;
  @override
  int get lastPage;
  @override
  int get currentPage;
  @override
  int get perPage;
  @override
  int? get prev;
  @override
  int? get next;
  @override
  @JsonKey(ignore: true)
  _$$_MetaCopyWith<_$_Meta> get copyWith => throw _privateConstructorUsedError;
}
