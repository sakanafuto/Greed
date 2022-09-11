// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'greed_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GreedModel {
// Reader reader,
  @HiveField(0)
  String get name => throw _privateConstructorUsedError;
  @HiveField(1)
  int get price => throw _privateConstructorUsedError;
  @HiveField(2)
  String get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GreedModelCopyWith<GreedModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GreedModelCopyWith<$Res> {
  factory $GreedModelCopyWith(
          GreedModel value, $Res Function(GreedModel) then) =
      _$GreedModelCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String name,
      @HiveField(1) int price,
      @HiveField(2) String description});
}

/// @nodoc
class _$GreedModelCopyWithImpl<$Res> implements $GreedModelCopyWith<$Res> {
  _$GreedModelCopyWithImpl(this._value, this._then);

  final GreedModel _value;
  // ignore: unused_field
  final $Res Function(GreedModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? price = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_GreedModelCopyWith<$Res>
    implements $GreedModelCopyWith<$Res> {
  factory _$$_GreedModelCopyWith(
          _$_GreedModel value, $Res Function(_$_GreedModel) then) =
      __$$_GreedModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String name,
      @HiveField(1) int price,
      @HiveField(2) String description});
}

/// @nodoc
class __$$_GreedModelCopyWithImpl<$Res> extends _$GreedModelCopyWithImpl<$Res>
    implements _$$_GreedModelCopyWith<$Res> {
  __$$_GreedModelCopyWithImpl(
      _$_GreedModel _value, $Res Function(_$_GreedModel) _then)
      : super(_value, (v) => _then(v as _$_GreedModel));

  @override
  _$_GreedModel get _value => super._value as _$_GreedModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? price = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_GreedModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@HiveType(typeId: 0)
class _$_GreedModel implements _GreedModel {
  const _$_GreedModel(
      {@HiveField(0) required this.name,
      @HiveField(1) required this.price,
      @HiveField(2) required this.description});

// Reader reader,
  @override
  @HiveField(0)
  final String name;
  @override
  @HiveField(1)
  final int price;
  @override
  @HiveField(2)
  final String description;

  @override
  String toString() {
    return 'GreedModel(name: $name, price: $price, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GreedModel &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$_GreedModelCopyWith<_$_GreedModel> get copyWith =>
      __$$_GreedModelCopyWithImpl<_$_GreedModel>(this, _$identity);
}

abstract class _GreedModel implements GreedModel {
  const factory _GreedModel(
      {@HiveField(0) required final String name,
      @HiveField(1) required final int price,
      @HiveField(2) required final String description}) = _$_GreedModel;

  @override // Reader reader,
  @HiveField(0)
  String get name;
  @override
  @HiveField(1)
  int get price;
  @override
  @HiveField(2)
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_GreedModelCopyWith<_$_GreedModel> get copyWith =>
      throw _privateConstructorUsedError;
}
