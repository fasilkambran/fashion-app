import 'package:flutter/material.dart';

import 'home_screen.dart';


class Login_Success extends StatefulWidget {
  const Login_Success({super.key});

  @override
  State<Login_Success> createState() => _Login_SuccessState();
}

class _Login_SuccessState extends State<Login_Success> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/logo/icons8-success-144.png",),
          Center(
            child: Text("successfull!",
              style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 30),),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text("Congratulations on successfully registering in our app!"
                " You can now start working in it. Welcome aboard!",style: TextStyle(fontSize: 18),),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 220),
            child: TextButton(onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>HomeScreen()));
            },

              style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(color: Colors.black)),
                  ),minimumSize: MaterialStateProperty.all(Size(200, 40))),
              child: Text("Continue",style: TextStyle(fontSize: 20,color: Colors.white),),


            ),
          ),
        ],
      ),
    );

  }
}
