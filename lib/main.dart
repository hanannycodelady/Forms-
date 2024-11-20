import 'package:flutter/material.dart';
// import 'package:flutter_application/Screens/category_screens.dart';
// import 'package:flutter_application/Screens/Login.dart';
import 'Signup.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: Login(), 
      home: SignUp(),
      // home: CategoryScreens(title: 'Categories'),
    );
  }
}
