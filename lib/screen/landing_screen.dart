import 'package:flutter/material.dart';
class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/image/Untitled design (1).png"),
                  fit: BoxFit.cover)),
        ),
        Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
          ),
          backgroundColor: Colors.transparent,
          body: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(padding:const  EdgeInsets.only(bottom: 20),
                          child: OutlinedButton(onPressed: (){
                            setState(() {
                              isClicked = !isClicked;
                            });
                            Navigator.pushNamed(context,"/login screen");
                          },child: Text("Login"),
                            style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.all(Colors.white60),
                                minimumSize:  MaterialStateProperty.all(const Size(300, 50)),
                                backgroundColor: MaterialStateProperty.all(Colors.transparent),
                                side: MaterialStateProperty.all(const BorderSide(color: Colors.white70,width: 2)),
                                textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 20,fontWeight: FontWeight.bold))
                            ),

                          ),
                        ),
                        Padding(padding: const EdgeInsets.only(bottom: 30),
                          child: OutlinedButton(onPressed: (){
                            Navigator.pushNamed(context, "/register screen");
                          },
                            child: Text("Sign Up"),
                            style: ButtonStyle(foregroundColor: MaterialStateProperty.all(Colors.white70),
                                minimumSize: MaterialStateProperty.all(const Size(300, 50)),
                                backgroundColor: MaterialStateProperty.all(Colors.transparent,),
                                side: MaterialStateProperty.all(const BorderSide(color: Colors.white54,width: 2)),
                                textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 18,fontWeight: FontWeight.bold))
                            ),

                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
