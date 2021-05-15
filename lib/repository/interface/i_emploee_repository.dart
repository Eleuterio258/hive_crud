import 'package:hive/hive.dart';
import 'package:hive_crud/model/employee.dart';

abstract class IEmployeeRepository {
  Future<Box> employeeBox();
  Future<List<Employee>> getAllEmployee();
  Future<void> addEmployee(Employee employee);
  Future<void> deleteEmployee(int id);
  Future<void> deleteAllEmployee();
  Future<void> updateEmployee(Employee employee,int id);
}
