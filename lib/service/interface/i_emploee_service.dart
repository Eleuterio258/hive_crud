import 'package:hive_crud/model/employee.dart';

abstract class IEmploeeService {
  Future<List<Employee>> addEmploeeRepository(Employee employee);
  Future<void> allEmploeeRepository();
  Future<void> deleteEmploeeRepository(int id);
  Future<void> updateEmploeeRepository(Employee employee);
  Future<void> getByIdEmploeeRepository(int id);
}
