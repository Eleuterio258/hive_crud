import 'package:json_annotation/json_annotation.dart';

part 'contacto.g.dart';

@JsonSerializable()
class Contacto {
  final int id;
  final String name;
  final String address;
  final String phone;
  final String description;
  final String email;
  Contacto(
      {this.id,
      this.name,
      this.address,
      this.phone,
      this.description,
      this.email});

  factory Contacto.fromJson(Map<String, dynamic> json) =>
      _$ContactoFromJson(json);
}
