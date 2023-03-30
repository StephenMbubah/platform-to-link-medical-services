import 'package:flutter/material.dart';
import 'package:medical_linkup/buttons/custom_button.dart';
import 'package:medical_linkup/screens/login_hospital.dart';

class HospitalSignUpScreen extends StatefulWidget {
  const HospitalSignUpScreen({Key? key}) : super(key: key);

  @override
  State<HospitalSignUpScreen> createState() => _HospitalSignUpScreenState();
}

class _HospitalSignUpScreenState extends State<HospitalSignUpScreen> {
  TextEditingController _passwordTextController= TextEditingController();
  TextEditingController _emailTextController= TextEditingController();
  TextEditingController _firstNameTextController= TextEditingController();
  TextEditingController _lastNameTextController= TextEditingController();
  TextEditingController  _passwordsTextController = TextEditingController();

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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginHospital()));
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
              reuseableTextField("Enter Hospital's name", Icons.person_outline, false, _firstNameTextController),
              const SizedBox(
                height: 20,
              ),
              reuseableTextField("Enter Hospital Location", Icons.person_outline, false, _lastNameTextController),
              const SizedBox(
                height: 20,
              ),
              reuseableTextField("Enter Hospital's Email", Icons.email, false, _emailTextController),
              const SizedBox(
                height: 20,
              ),
              reuseableTextField("Enter Password", Icons.lock_outline, true, _passwordTextController),
              const SizedBox(
                height: 20,
              ),
              reuseableTextField("Confirm Password", Icons.lock_outline, true, _passwordsTextController),
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