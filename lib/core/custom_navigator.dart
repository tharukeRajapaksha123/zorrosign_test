import 'package:flutter/material.dart';

void customNavigator(BuildContext context, Widget child) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => child));
}
