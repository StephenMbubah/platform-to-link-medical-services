import 'package:flutter/material.dart';
import 'package:medical_linkup/buttons/custom_button.dart';

class LoginHospital extends StatefulWidget {
  const LoginHospital({Key? key}) : super(key: key);

  @override
  State<LoginHospital> createState() => _LoginHospitalState();
}

class _LoginHospitalState extends State<LoginHospital> {
  TextEditingController _passwordTextController= TextEditingController();
  TextEditingController _emailTextController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: Column(
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
              "Enter your facilities email address",
              Icons.email,
              false,
              _emailTextController,
            ),
            SizedBox(
              height: 20,
            ),
            reuseableTextField(
                "enter your facilities password",
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
                const Text("Don't have a comapany account?", style: TextStyle(color: Colors.black, fontSize: 18),),
                SizedBox(
                  width: 5,
                ),
                GestureDetector(
                    onTap: (){
                      //Navigator.push(context, MaterialPageRoute(builder: (context)=> ));
                    },
                    child:const  Text("Sign up", style: TextStyle(color: Colors.red, fontSize: 20),))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
