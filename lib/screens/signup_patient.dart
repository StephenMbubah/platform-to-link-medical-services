import 'package:flutter/material.dart';
import 'package:medical_linkup/buttons/custom_button.dart';
import 'package:medical_linkup/screens/login_patient.dart';

class PatientSignUpScreen extends StatefulWidget {
  const PatientSignUpScreen({Key? key}) : super(key: key);

  @override
  State<PatientSignUpScreen> createState() => _PatientSignUpScreenState();
}

class _PatientSignUpScreenState extends State<PatientSignUpScreen> {
  TextEditingController _passwordTextController= TextEditingController();
  TextEditingController _emailTextController= TextEditingController();
  TextEditingController _firstNameTextController= TextEditingController();
  TextEditingController _lastNameTextController= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPatient()));
                      },
                      child: const Icon(Icons.arrow_back)),
                  const SizedBox(
                    width: 25,
                  ),
                  Text("Sign Up", style: TextStyle(fontSize: 20, color: Colors.black),)
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              reuseableTextField("Enter Firstname", Icons.person_outline, false, _firstNameTextController),
              const SizedBox(
                height: 20,
              ),
              reuseableTextField("Enter Lastname", Icons.person_outline, false, _lastNameTextController),
              const SizedBox(
                height: 20,
              ),
              reuseableTextField("Enter Email", Icons.email, false, _emailTextController),
              const SizedBox(
                height: 20,
              ),
              reuseableTextField("Enter Password", Icons.lock_outline, true, _passwordTextController),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: (){},
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
                  child: Center(child: const Text("SIGN UP", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}