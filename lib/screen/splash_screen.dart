import 'package:flutter/material.dart';


import 'onboarding_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override

  State<SplashScreen> createState() => _SplashScreenState();

}


class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(seconds: 3),()=>Navigator.pushReplacement(context, MaterialPageRoute
      (builder: (context)=>Onboarding ())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Image.asset('assets/image/Untitled design.png',width: MediaQuery.of(context).size.width,
          height:MediaQuery.of(context).size.height,fit:BoxFit.cover ,),
      ),
    );
  }


}
