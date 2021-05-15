import 'package:hive_crud/helper/db_conn.dart';
import 'package:hive_crud/model/employee.dart';
import 'package:hive_crud/repository/emploee/emploee_repository_sql.dart';

class EmploeeService {
  EmploeeRepositorySql emploeeRepository;
  EmploeeService() {
    emploeeRepository = EmploeeRepositorySql();
  }

  addEmploeeRepository(Employee employee) async {
    return await emploeeRepository.saveEmployee(DbConn.tableEmployee, employee);
  }

  allEmploeeRepository() async {
    return await emploeeRepository.getAllEmployee(DbConn.tableEmployee);
  }

  deleteEmploeeRepository(int id) async {
    return await emploeeRepository.deleteEmployee(DbConn.tableEmployee, id);
  }

  updateEmploeeRepository(Employee employee) async {
    return await emploeeRepository.updateEmployee(
        DbConn.tableEmployee, employee.toJson());
  }

  getByIdEmploeeRepository(int id) async {
    return await emploeeRepository.getEmployeeById(DbConn.tableEmployee, id);
  }
}
