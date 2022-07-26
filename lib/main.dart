import 'package:flutter/material.dart';
import 'package:notary_app/orderscreen.dart';

import 'dashboardscreen.dart';
import 'appointmentscreen.dart';
import 'leadscreen.dart';
import 'loginscreen.dart';

void main(List<String> args) {
  runApp(
    new MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Color(0xffa2a3a2), letterSpacing: 0),
        ),
      ),
      home: OrderScreen(),
    ),
  );
}
