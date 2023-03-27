
import 'package:flutter/material.dart';
import 'package:medical_linkup/buttons/custom_button.dart';

class choicePage extends StatelessWidget {
  const choicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 140,
              ),
              const Text("Type of Account",
                style: TextStyle(
                  fontSize: 40, fontWeight: FontWeight.bold
                ) ,),
              SizedBox(height: 10,),

              Center(
                child: Text("What type of Account do you want to use in this app",
                  style: TextStyle(
                    fontSize: 20, color: Colors.blueGrey
                  ),),
              ),
              Text("your choice is permanent for this device",
                style: TextStyle(
                  fontSize: 16, color: Colors.red
                ),

              ),
              SizedBox(
                height: 20
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context,'/loginHospital');
                },
                child: ReuseableContainer(
                  text1: 'I am a Medical Service Provider',
                  text2: 'I am a Medical Service Provider and wish to Login or Register to my account',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, '/loginPatient');
                },
                child: ReuseableContainer(
                  text1: 'I am Seeking Medical Services',
                  text2: 'I am a a Patient looking for a medical service provider to attend to me',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


