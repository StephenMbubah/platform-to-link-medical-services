import 'package:flutter/material.dart';
import 'package:medical_linkup/screens/choice.dart';
import 'package:medical_linkup/screens/login_hospital.dart';
import 'package:medical_linkup/screens/login_patient.dart';
import 'package:medical_linkup/screens/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const WelcomeScreen(),
        initialRoute: '/',
        routes: {
          '': (context) => const WelcomeScreen(),
          '/choicepage': (context) => const choicePage(),
          '/loginPatient': (context) => const LoginPatient(),
          '/loginHospital': (context) => const LoginHospital()
        }

    );
  }
}

