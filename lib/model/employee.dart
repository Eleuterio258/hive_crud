import 'dart:convert';

Employee employeeFromJson(String str) => Employee.fromJson(json.decode(str));

String employeeToJson(Employee data) => json.encode(data.toJson());

class Employee {
  Employee(
      {this.id,
      this.nome,
      this.subNome,
      this.apelido,
      this.email,
      this.morada,
      this.telefone});

  final String id;
  final String nome;
  final String subNome;
  final String apelido;
  final String email;
  final String morada;
  final String telefone;

  

  factory Employee.fromJson(Map<String, dynamic> json) => Employee(
        id: json["id"],
        nome: json["nome"],
        subNome: json["subNome"],
        apelido: json["apelido"],
        email: json["email"],
        morada: json["morada"],
        telefone: json["telefone"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nome": nome,
        "subNome": subNome,
        "apelido": apelido,
        "email": email,
        "morada": morada,
        "telefone": telefone,
      };
}
