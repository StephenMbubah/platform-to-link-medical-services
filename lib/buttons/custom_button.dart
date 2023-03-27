import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;

  const CustomButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 28.0, right: 28.0,top: 10.0, bottom: 10.0),
      decoration: BoxDecoration(
        color: const Color(0xffC5D7FE),
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: InkWell(
        child: Text(
          text,
          style: const TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}

class ReuseableContainer extends StatelessWidget {
  String text1;
  String text2;

  ReuseableContainer({

    required this.text1, required this.text2
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 130,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          Text(text1,
            style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold ),
          ),
          SizedBox(
              height: 30
          ),
          Text(text2,
            style: TextStyle(
                fontSize: 15, fontStyle: FontStyle.italic, color: Colors.white
            ),
          ),
        ],
      ),
    );
  }
}


TextField reuseableTextField(String text, IconData icon,bool isPasswordType, TextEditingController controller){
  return TextField(
    controller: controller,
    obscureText: isPasswordType,
    enableSuggestions: !isPasswordType,
    autocorrect: !isPasswordType,
    cursorColor: Colors.black54,
    style: TextStyle(color: Colors.black54.withOpacity(0.9)),
    decoration: InputDecoration(
      prefixIcon: Icon(
          icon,
          color: Colors.black54
      ),
      labelText: text,
      labelStyle: TextStyle(color: Colors.black54.withOpacity(0.9)),
      filled: true,
      floatingLabelBehavior:FloatingLabelBehavior.never,
      fillColor: Colors.white.withOpacity(0.3),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide:  BorderSide(width: 0, style: BorderStyle.none)
      ),
    ),
    keyboardType: isPasswordType
        ? TextInputType.visiblePassword
        :TextInputType.emailAddress,
  );
}

signInsignUpButton(BuildContext context,bool isLogin, Function onTap){
  return Container(
    height: 50,
    width: MediaQuery.of(context).size.width,
    margin: const EdgeInsets.fromLTRB(0, 10, 20, 0),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(90)),
    child: ElevatedButton(
      onPressed: (){
        onTap();
      },
      child: Text(
        isLogin ? 'Log IN' : 'SIGN UP',
        style:const  TextStyle(
            color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 16
        ),
      ),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if(states.contains(MaterialState.pressed)){
              return Colors.black26;
            }
            return Colors.white;
          }),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))
      ),
    ),

  );
}