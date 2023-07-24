import 'package:flutter/material.dart';
import 'package:zorrosign_test/core/constants.dart';
import 'package:zorrosign_test/models/employee.dart';

class EmployeeView extends StatelessWidget {
  final Employee employee;
  const EmployeeView({super.key, required this.employee});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Employee Details"),
      ),
      body: Container(
        padding: const EdgeInsets.all(defaultPadding),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Hero(
              tag: employee.id,
              child: CircleAvatar(
                radius: MediaQuery.of(context).size.width / 3,
                backgroundImage: NetworkImage(
                  employee.profilePictureUrl,
                ),
              ),
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(defaultPadding),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defaultRadius),
                color: Colors.blue[50],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _employeeDetailText("Name  : ", employee.name),
                  _employeeDetailText("Age  : ", "${employee.age} yrs"),
                  _employeeDetailText("Address  : ", employee.address),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _employeeDetailText(String title, String detail) {
    return Container(
      alignment: Alignment.center,
      height: 54,
      child: DefaultTextStyle(
        style: TextStyle(fontSize: 24, color: Colors.blue[500]!),
        child: Text.rich(
          TextSpan(children: [
            TextSpan(text: title),
            TextSpan(
                text: detail,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                )),
          ]),
        ),
      ),
    );
  }
}
