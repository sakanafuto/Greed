// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'greed_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GreedModelAdapter extends TypeAdapter<_$_GreedModel> {
  @override
  final int typeId = 0;

  @override
  _$_GreedModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_GreedModel(
      name: fields[0] as String,
      price: fields[1] as int,
      description: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$_GreedModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.price)
      ..writeByte(2)
      ..write(obj.description);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GreedModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
