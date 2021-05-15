// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contacto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Contacto _$ContactoFromJson(Map<String, dynamic> json) {
  return Contacto(
    id: json['id'] as int,
    name: json['name'] as String,
    address: json['address'] as String,
    phone: json['phone'] as String,
    description: json['description'] as String,
    email: json['email'] as String,
  );
}

Map<String, dynamic> _$ContactoToJson(Contacto instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'phone': instance.phone,
      'description': instance.description,
      'email': instance.email,
    };
