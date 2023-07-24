import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zorrosign_test/controllers/employee_controller.dart';
import 'package:zorrosign_test/models/employee.dart';
import 'package:zorrosign_test/widgets/employee_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Employees"),
        ),
        body: GetBuilder(
          init: Get.put(EmployeeController()),
          builder: (EmployeeController controller) {
            return ListView.builder(
                itemCount: controller.employees.length,
                itemBuilder: (context, index) {
                  Employee employee = controller.employees[index];
                  return EmployeeCard(employee: employee);
                });
          },
        ));
  }
}
