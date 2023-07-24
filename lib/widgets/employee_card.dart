import 'package:flutter/material.dart';
import 'package:zorrosign_test/core/custom_navigator.dart';
import 'package:zorrosign_test/models/employee.dart';
import 'package:zorrosign_test/views/employee_view.dart';

class EmployeeCard extends StatelessWidget {
  const EmployeeCard({
    super.key,
    required this.employee,
  });

  final Employee employee;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          customNavigator(context, EmployeeView(employee: employee));
        },
        leading: Hero(
          tag: employee.id,
          child: CircleAvatar(
            backgroundImage: NetworkImage(employee.profilePictureUrl),
          ),
        ),
        title: Text(employee.name),
        subtitle: Text(employee.address),
      ),
    );
  }
}
