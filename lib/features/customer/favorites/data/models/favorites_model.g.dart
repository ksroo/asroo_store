// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorites_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FavoritesModelAdapter extends TypeAdapter<FavoritesModel> {
  @override
  final int typeId = 1;

  @override
  FavoritesModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FavoritesModel(
      id: fields[0] as String,
      title: fields[1] as String,
      image: fields[2] as String,
      price: fields[3] as String,
      categoryName: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, FavoritesModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.image)
      ..writeByte(3)
      ..write(obj.price)
      ..writeByte(4)
      ..write(obj.categoryName);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FavoritesModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
