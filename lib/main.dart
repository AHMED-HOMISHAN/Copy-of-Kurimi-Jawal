import 'package:flutter/material.dart';
import 'package:kuraimijawal/auth/loginScreen.dart';
import 'package:kuraimijawal/components/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kurimi Jawal',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: primaryColor,
          useMaterial3: true,
          appBarTheme: const AppBarTheme(
            centerTitle: true,
            elevation: 0.0,
            backgroundColor: Colors.white,
          )),
      home: const LoginScreen(),
    );
  }
}
