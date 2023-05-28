// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Property _$PropertyFromJson(Map<String, dynamic> json) {
  return _Property.fromJson(json);
}

/// @nodoc
mixin _$Property {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;
  int get images => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  PropertyFor get for_ => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  int get typeId => throw _privateConstructorUsedError;
  PropertyType get type => throw _privateConstructorUsedError;
  City? get city => throw _privateConstructorUsedError;
  int? get cityId => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get longtitude => throw _privateConstructorUsedError;
  String? get whatsapp => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get deletedAt => throw _privateConstructorUsedError;
  double? get area => throw _privateConstructorUsedError;
  int? get rooms => throw _privateConstructorUsedError;
  int? get bathrooms => throw _privateConstructorUsedError;
  PropertyStatus get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PropertyCopyWith<Property> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyCopyWith<$Res> {
  factory $PropertyCopyWith(Property value, $Res Function(Property) then) =
      _$PropertyCopyWithImpl<$Res, Property>;
  @useResult
  $Res call(
      {String id,
      String title,
      String thumbnail,
      int images,
      String slug,
      String userId,
      User user,
      double price,
      PropertyFor for_,
      String address,
      int typeId,
      PropertyType type,
      City? city,
      int? cityId,
      double? latitude,
      double? longtitude,
      String? whatsapp,
      String? password,
      String? description,
      String? createdAt,
      String? deletedAt,
      double? area,
      int? rooms,
      int? bathrooms,
      PropertyStatus status});

  $UserCopyWith<$Res> get user;
  $PropertyTypeCopyWith<$Res> get type;
  $CityCopyWith<$Res>? get city;
}

/// @nodoc
class _$PropertyCopyWithImpl<$Res, $Val extends Property>
    implements $PropertyCopyWith<$Res> {
  _$PropertyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? thumbnail = null,
    Object? images = null,
    Object? slug = null,
    Object? userId = null,
    Object? user = null,
    Object? price = null,
    Object? for_ = null,
    Object? address = null,
    Object? typeId = null,
    Object? type = null,
    Object? city = freezed,
    Object? cityId = freezed,
    Object? latitude = freezed,
    Object? longtitude = freezed,
    Object? whatsapp = freezed,
    Object? password = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? deletedAt = freezed,
    Object? area = freezed,
    Object? rooms = freezed,
    Object? bathrooms = freezed,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as int,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      for_: null == for_
          ? _value.for_
          : for_ // ignore: cast_nullable_to_non_nullable
              as PropertyFor,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      typeId: null == typeId
          ? _value.typeId
          : typeId // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PropertyType,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City?,
      cityId: freezed == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longtitude: freezed == longtitude
          ? _value.longtitude
          : longtitude // ignore: cast_nullable_to_non_nullable
              as double?,
      whatsapp: freezed == whatsapp
          ? _value.whatsapp
          : whatsapp // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as double?,
      rooms: freezed == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as int?,
      bathrooms: freezed == bathrooms
          ? _value.bathrooms
          : bathrooms // ignore: cast_nullable_to_non_nullable
              as int?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PropertyStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PropertyTypeCopyWith<$Res> get type {
    return $PropertyTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CityCopyWith<$Res>? get city {
    if (_value.city == null) {
      return null;
    }

    return $CityCopyWith<$Res>(_value.city!, (value) {
      return _then(_value.copyWith(city: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PropertyCopyWith<$Res> implements $PropertyCopyWith<$Res> {
  factory _$$_PropertyCopyWith(
          _$_Property value, $Res Function(_$_Property) then) =
      __$$_PropertyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String thumbnail,
      int images,
      String slug,
      String userId,
      User user,
      double price,
      PropertyFor for_,
      String address,
      int typeId,
      PropertyType type,
      City? city,
      int? cityId,
      double? latitude,
      double? longtitude,
      String? whatsapp,
      String? password,
      String? description,
      String? createdAt,
      String? deletedAt,
      double? area,
      int? rooms,
      int? bathrooms,
      PropertyStatus status});

  @override
  $UserCopyWith<$Res> get user;
  @override
  $PropertyTypeCopyWith<$Res> get type;
  @override
  $CityCopyWith<$Res>? get city;
}

/// @nodoc
class __$$_PropertyCopyWithImpl<$Res>
    extends _$PropertyCopyWithImpl<$Res, _$_Property>
    implements _$$_PropertyCopyWith<$Res> {
  __$$_PropertyCopyWithImpl(
      _$_Property _value, $Res Function(_$_Property) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? thumbnail = null,
    Object? images = null,
    Object? slug = null,
    Object? userId = null,
    Object? user = null,
    Object? price = null,
    Object? for_ = null,
    Object? address = null,
    Object? typeId = null,
    Object? type = null,
    Object? city = freezed,
    Object? cityId = freezed,
    Object? latitude = freezed,
    Object? longtitude = freezed,
    Object? whatsapp = freezed,
    Object? password = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? deletedAt = freezed,
    Object? area = freezed,
    Object? rooms = freezed,
    Object? bathrooms = freezed,
    Object? status = null,
  }) {
    return _then(_$_Property(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as int,
      null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      null == for_
          ? _value.for_
          : for_ // ignore: cast_nullable_to_non_nullable
              as PropertyFor,
      null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      null == typeId
          ? _value.typeId
          : typeId // ignore: cast_nullable_to_non_nullable
              as int,
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PropertyType,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as City?,
      cityId: freezed == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longtitude: freezed == longtitude
          ? _value.longtitude
          : longtitude // ignore: cast_nullable_to_non_nullable
              as double?,
      whatsapp: freezed == whatsapp
          ? _value.whatsapp
          : whatsapp // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as double?,
      rooms: freezed == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as int?,
      bathrooms: freezed == bathrooms
          ? _value.bathrooms
          : bathrooms // ignore: cast_nullable_to_non_nullable
              as int?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PropertyStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Property implements _Property {
  const _$_Property(
      this.id,
      this.title,
      this.thumbnail,
      this.images,
      this.slug,
      this.userId,
      this.user,
      this.price,
      this.for_,
      this.address,
      this.typeId,
      this.type,
      {this.city,
      this.cityId,
      this.latitude,
      this.longtitude,
      this.whatsapp,
      this.password,
      this.description,
      this.createdAt,
      this.deletedAt,
      this.area,
      this.rooms,
      this.bathrooms,
      this.status = PropertyStatus.Active});

  factory _$_Property.fromJson(Map<String, dynamic> json) =>
      _$$_PropertyFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String thumbnail;
  @override
  final int images;
  @override
  final String slug;
  @override
  final String userId;
  @override
  final User user;
  @override
  final double price;
  @override
  final PropertyFor for_;
  @override
  final String address;
  @override
  final int typeId;
  @override
  final PropertyType type;
  @override
  final City? city;
  @override
  final int? cityId;
  @override
  final double? latitude;
  @override
  final double? longtitude;
  @override
  final String? whatsapp;
  @override
  final String? password;
  @override
  final String? description;
  @override
  final String? createdAt;
  @override
  final String? deletedAt;
  @override
  final double? area;
  @override
  final int? rooms;
  @override
  final int? bathrooms;
  @override
  @JsonKey()
  final PropertyStatus status;

  @override
  String toString() {
    return 'Property(id: $id, title: $title, thumbnail: $thumbnail, images: $images, slug: $slug, userId: $userId, user: $user, price: $price, for_: $for_, address: $address, typeId: $typeId, type: $type, city: $city, cityId: $cityId, latitude: $latitude, longtitude: $longtitude, whatsapp: $whatsapp, password: $password, description: $description, createdAt: $createdAt, deletedAt: $deletedAt, area: $area, rooms: $rooms, bathrooms: $bathrooms, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Property &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.images, images) || other.images == images) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.for_, for_) || other.for_ == for_) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.typeId, typeId) || other.typeId == typeId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longtitude, longtitude) ||
                other.longtitude == longtitude) &&
            (identical(other.whatsapp, whatsapp) ||
                other.whatsapp == whatsapp) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.rooms, rooms) || other.rooms == rooms) &&
            (identical(other.bathrooms, bathrooms) ||
                other.bathrooms == bathrooms) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        title,
        thumbnail,
        images,
        slug,
        userId,
        user,
        price,
        for_,
        address,
        typeId,
        type,
        city,
        cityId,
        latitude,
        longtitude,
        whatsapp,
        password,
        description,
        createdAt,
        deletedAt,
        area,
        rooms,
        bathrooms,
        status
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PropertyCopyWith<_$_Property> get copyWith =>
      __$$_PropertyCopyWithImpl<_$_Property>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PropertyToJson(
      this,
    );
  }
}

abstract class _Property implements Property {
  const factory _Property(
      final String id,
      final String title,
      final String thumbnail,
      final int images,
      final String slug,
      final String userId,
      final User user,
      final double price,
      final PropertyFor for_,
      final String address,
      final int typeId,
      final PropertyType type,
      {final City? city,
      final int? cityId,
      final double? latitude,
      final double? longtitude,
      final String? whatsapp,
      final String? password,
      final String? description,
      final String? createdAt,
      final String? deletedAt,
      final double? area,
      final int? rooms,
      final int? bathrooms,
      final PropertyStatus status}) = _$_Property;

  factory _Property.fromJson(Map<String, dynamic> json) = _$_Property.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get thumbnail;
  @override
  int get images;
  @override
  String get slug;
  @override
  String get userId;
  @override
  User get user;
  @override
  double get price;
  @override
  PropertyFor get for_;
  @override
  String get address;
  @override
  int get typeId;
  @override
  PropertyType get type;
  @override
  City? get city;
  @override
  int? get cityId;
  @override
  double? get latitude;
  @override
  double? get longtitude;
  @override
  String? get whatsapp;
  @override
  String? get password;
  @override
  String? get description;
  @override
  String? get createdAt;
  @override
  String? get deletedAt;
  @override
  double? get area;
  @override
  int? get rooms;
  @override
  int? get bathrooms;
  @override
  PropertyStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_PropertyCopyWith<_$_Property> get copyWith =>
      throw _privateConstructorUsedError;
}

PropertyType _$PropertyTypeFromJson(Map<String, dynamic> json) {
  return _PropertyType.fromJson(json);
}

/// @nodoc
mixin _$PropertyType {
  int get id => throw _privateConstructorUsedError;
  String get name_en => throw _privateConstructorUsedError;
  String get name_fr => throw _privateConstructorUsedError;
  String get name_ar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PropertyTypeCopyWith<PropertyType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyTypeCopyWith<$Res> {
  factory $PropertyTypeCopyWith(
          PropertyType value, $Res Function(PropertyType) then) =
      _$PropertyTypeCopyWithImpl<$Res, PropertyType>;
  @useResult
  $Res call({int id, String name_en, String name_fr, String name_ar});
}

/// @nodoc
class _$PropertyTypeCopyWithImpl<$Res, $Val extends PropertyType>
    implements $PropertyTypeCopyWith<$Res> {
  _$PropertyTypeCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PropertyTypeCopyWith<$Res>
    implements $PropertyTypeCopyWith<$Res> {
  factory _$$_PropertyTypeCopyWith(
          _$_PropertyType value, $Res Function(_$_PropertyType) then) =
      __$$_PropertyTypeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name_en, String name_fr, String name_ar});
}

/// @nodoc
class __$$_PropertyTypeCopyWithImpl<$Res>
    extends _$PropertyTypeCopyWithImpl<$Res, _$_PropertyType>
    implements _$$_PropertyTypeCopyWith<$Res> {
  __$$_PropertyTypeCopyWithImpl(
      _$_PropertyType _value, $Res Function(_$_PropertyType) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name_en = null,
    Object? name_fr = null,
    Object? name_ar = null,
  }) {
    return _then(_$_PropertyType(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PropertyType implements _PropertyType {
  const _$_PropertyType(this.id, this.name_en, this.name_fr, this.name_ar);

  factory _$_PropertyType.fromJson(Map<String, dynamic> json) =>
      _$$_PropertyTypeFromJson(json);

  @override
  final int id;
  @override
  final String name_en;
  @override
  final String name_fr;
  @override
  final String name_ar;

  @override
  String toString() {
    return 'PropertyType(id: $id, name_en: $name_en, name_fr: $name_fr, name_ar: $name_ar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PropertyType &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name_en, name_en) || other.name_en == name_en) &&
            (identical(other.name_fr, name_fr) || other.name_fr == name_fr) &&
            (identical(other.name_ar, name_ar) || other.name_ar == name_ar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name_en, name_fr, name_ar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PropertyTypeCopyWith<_$_PropertyType> get copyWith =>
      __$$_PropertyTypeCopyWithImpl<_$_PropertyType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PropertyTypeToJson(
      this,
    );
  }
}

abstract class _PropertyType implements PropertyType {
  const factory _PropertyType(final int id, final String name_en,
      final String name_fr, final String name_ar) = _$_PropertyType;

  factory _PropertyType.fromJson(Map<String, dynamic> json) =
      _$_PropertyType.fromJson;

  @override
  int get id;
  @override
  String get name_en;
  @override
  String get name_fr;
  @override
  String get name_ar;
  @override
  @JsonKey(ignore: true)
  _$$_PropertyTypeCopyWith<_$_PropertyType> get copyWith =>
      throw _privateConstructorUsedError;
}
