import 'package:flutter/material.dart';
import 'package:medical_linkup/buttons/custom_button.dart';
import 'package:medical_linkup/screens/signup_patient.dart';

class LoginPatient extends StatefulWidget {
  const LoginPatient({Key? key}) : super(key: key);

  @override
  State<LoginPatient> createState() => _LoginPatientState();
}
class _LoginPatientState extends State<LoginPatient> {
  TextEditingController _passwordTextController= TextEditingController();
  TextEditingController _emailTextController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Image.asset("assets/images/img.png", height: 270,),
              const SizedBox(
                height: 5,
              ),
              const Text("let's get you that healthcare you need", style: TextStyle(fontSize: 20,color: Colors.red, fontStyle: FontStyle.italic),),
              const SizedBox(
                height: 20,
              ),
              reuseableTextField(
                  "Enter your email address",
                  Icons.email,
                  false,
                  _emailTextController,
              ),
              SizedBox(
                height: 20,
              ),
              reuseableTextField(
                  "enter your password",
                  Icons.password,
                  true,
                  _passwordTextController
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  const Text("Don't have an account?", style: TextStyle(color: Colors.black, fontSize: 18),),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                      onTap: (){
                        print("signing up");
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> PatientSignUpScreen()));
                      },
                      child:const  Text("Sign up", style: TextStyle(color: Colors.red, fontSize: 20),))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
