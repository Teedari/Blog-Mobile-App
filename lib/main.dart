import 'dart:convert';

import 'package:blog_app/pages/dashboard.dart';

//import './pages/splash_screen.dart';
import 'package:flutter/material.dart';
//import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme: ThemeData(fontFamily: 'Nunito'),
      theme: ThemeData(
          fontFamily: 'Nunito',
          accentColor: Color(0xFF1DFFBF),
          primaryColor: Color(0xFF734F7D),
          scaffoldBackgroundColor: Colors.white),
      home: DashBoard(),
    );
  }
}
