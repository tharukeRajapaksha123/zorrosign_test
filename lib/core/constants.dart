import 'package:zorrosign_test/models/employee.dart';

const List<Employee> dummyEmployees = [
  Employee(
    id: 1,
    name: 'John Doe',
    address: '123 Main St',
    age: 30,
    profilePictureUrl:
        "https://images.unsplash.com/photo-1619895862022-09114b41f16f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80",
  ),
  Employee(
    id: 2,
    name: 'Jane Smith',
    address: '456 Elm St',
    age: 25,
    profilePictureUrl:
        "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80",
  ),
  Employee(
    id: 3,
    name: 'Michael Johnson',
    address: '789 Oak Ave',
    age: 35,
    profilePictureUrl:
        "https://images.unsplash.com/photo-1619895862022-09114b41f16f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80",
  ),
];

const double defaultPadding = 8.0;
const Duration defaultDuration = Duration(milliseconds: 800);
const double defaultRadius = 12.0;
