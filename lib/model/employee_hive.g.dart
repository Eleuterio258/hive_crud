// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_hive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class EmployeeHiveAdapter extends TypeAdapter<EmployeeHive> {
  @override
  final int typeId = 1;

  @override
  EmployeeHive read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return EmployeeHive(
      nome: fields[0] as String,
      subNome: fields[1] as String,
      apelido: fields[2] as String,
      email: fields[3] as String,
      morada: fields[4] as String,
      telefone: fields[5] as String,
    );
  }

  @override
  void write(BinaryWriter writer, EmployeeHive obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.nome)
      ..writeByte(1)
      ..write(obj.subNome)
      ..writeByte(2)
      ..write(obj.apelido)
      ..writeByte(3)
      ..write(obj.email)
      ..writeByte(4)
      ..write(obj.morada)
      ..writeByte(5)
      ..write(obj.telefone);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EmployeeHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
