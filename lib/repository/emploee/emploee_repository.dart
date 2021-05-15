import 'package:hive/hive.dart';
import 'package:hive_crud/model/employee.dart';

class EmployeeRepository {
  String _boxName = "employee";
  Future<Box> employeeBox() async {
    var box = await Hive.openBox<Employee>(_boxName);
    return box;
  }

  Future<List<Employee>> getAllEmployee() async {
    var box = await employeeBox();
    List<Employee> employees = box.values.toList();
    return employees;
  }

  Future<void> addEmployee(Employee employee) async {
    var box = await employeeBox();
    return box.add(employee);
  }

  Future<void> deleteEmployee(int id) async {
    var box = await employeeBox();
    return box.deleteAt(id);
  }

  Future<void> deleteAllEmployee() async {
    var box = await employeeBox();
    return box.clear();
  }

  Future<void> updateEmployee(Employee employee, int id) async {
    var box = await employeeBox();
    return box.putAt(id, employee);
  }


  
}
