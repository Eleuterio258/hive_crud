import 'package:hive/hive.dart';

part 'employee_hive.g.dart';

@HiveType(typeId: 1)
class EmployeeHive {
  @HiveField(0)
  final String nome;
  @HiveField(1)
  final String subNome;
  @HiveField(2)
  final String apelido;
  @HiveField(3)
  final String email;
  @HiveField(4)
  final String morada;
  @HiveField(5)
  final String telefone;

  EmployeeHive(
      {this.nome,
      this.subNome,
      this.apelido,
      this.email,
      this.morada,
      this.telefone});
}
