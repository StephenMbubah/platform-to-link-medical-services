
import 'package:flutter/material.dart';

import '../buttons/custom_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF3F7FF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 26,right: 26, top: 87),
              child: Container(
                height: 170,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Image.asset(
                  'assets/images/heartsethoscope.png ',
                  height: 280,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 23, right: 23),
              child: Center(
                child: Text(
                  'Welcome to \n mboalab',
                  style: TextStyle(
                    color: Color(0xff3D79FD),
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                  ),
                ),
              ),
            ),
            const Text("Your health is our priority",
              style: TextStyle(
                fontSize: 17,
                color: Colors.red,
                fontStyle: FontStyle.italic
              ),

            ),
            const SizedBox(
              height: 39,
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context,'/choicepage');
              },
              child: const Padding(
                padding: EdgeInsets.only(bottom: 199),
                child: CustomButton(
                  text: 'Get Started',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
