// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_log.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ErrorLogAdapter extends TypeAdapter<ErrorLog> {
  @override
  final int typeId = 0;

  @override
  ErrorLog read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ErrorLog(
      cat: fields[0] as String?,
      dec: fields[1] as String?,
      reason: fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ErrorLog obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.cat)
      ..writeByte(1)
      ..write(obj.dec)
      ..writeByte(2)
      ..write(obj.reason);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ErrorLogAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
