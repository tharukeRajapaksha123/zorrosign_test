import 'package:get/get.dart';
import 'package:zorrosign_test/core/constants.dart';
import 'package:zorrosign_test/models/employee.dart';

class EmployeeController extends GetxController {
  RxList<Employee> _employees = RxList<Employee>([]);

  //get employees
  RxList<Employee> get employees => _employees;

  //set employees
  set setEmployees(List<Employee> employees) {
    _employees = RxList(employees);
  }

  @override
  void onInit() {
    setEmployees = dummyEmployees;
    super.onInit();
  }
}
