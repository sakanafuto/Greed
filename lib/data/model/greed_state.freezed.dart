// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'greed_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GreedState {
  @HiveField(0)
  String get name => throw _privateConstructorUsedError;
  @HiveField(1)
  int get price => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GreedStateCopyWith<GreedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GreedStateCopyWith<$Res> {
  factory $GreedStateCopyWith(
          GreedState value, $Res Function(GreedState) then) =
      _$GreedStateCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String name,
      @HiveField(1) int price,
      @HiveField(2) String? description});
}

/// @nodoc
class _$GreedStateCopyWithImpl<$Res> implements $GreedStateCopyWith<$Res> {
  _$GreedStateCopyWithImpl(this._value, this._then);

  final GreedState _value;
  // ignore: unused_field
  final $Res Function(GreedState) _then;

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
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_GreedStateCopyWith<$Res>
    implements $GreedStateCopyWith<$Res> {
  factory _$$_GreedStateCopyWith(
          _$_GreedState value, $Res Function(_$_GreedState) then) =
      __$$_GreedStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String name,
      @HiveField(1) int price,
      @HiveField(2) String? description});
}

/// @nodoc
class __$$_GreedStateCopyWithImpl<$Res> extends _$GreedStateCopyWithImpl<$Res>
    implements _$$_GreedStateCopyWith<$Res> {
  __$$_GreedStateCopyWithImpl(
      _$_GreedState _value, $Res Function(_$_GreedState) _then)
      : super(_value, (v) => _then(v as _$_GreedState));

  @override
  _$_GreedState get _value => super._value as _$_GreedState;

  @override
  $Res call({
    Object? name = freezed,
    Object? price = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_GreedState(
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
              as String?,
    ));
  }
}

/// @nodoc

@HiveType(typeId: 0)
class _$_GreedState implements _GreedState {
  const _$_GreedState(
      {@HiveField(0) required this.name,
      @HiveField(1) required this.price,
      @HiveField(2) this.description});

  @override
  @HiveField(0)
  final String name;
  @override
  @HiveField(1)
  final int price;
  @override
  @HiveField(2)
  final String? description;

  @override
  String toString() {
    return 'GreedState(name: $name, price: $price, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GreedState &&
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
  _$$_GreedStateCopyWith<_$_GreedState> get copyWith =>
      __$$_GreedStateCopyWithImpl<_$_GreedState>(this, _$identity);
}

abstract class _GreedState implements GreedState {
  const factory _GreedState(
      {@HiveField(0) required final String name,
      @HiveField(1) required final int price,
      @HiveField(2) final String? description}) = _$_GreedState;

  @override
  @HiveField(0)
  String get name;
  @override
  @HiveField(1)
  int get price;
  @override
  @HiveField(2)
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_GreedStateCopyWith<_$_GreedState> get copyWith =>
      throw _privateConstructorUsedError;
}
