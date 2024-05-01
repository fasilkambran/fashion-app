import 'package:flutter/material.dart';

import '../models/onboarding_Model.dart';
import 'landing_screen.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();


}


class _OnboardingState extends State<Onboarding> {
  int currentIndex =0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                controller: _controller,
                onPageChanged: (int index){
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemCount: Contents.length,
                itemBuilder: (_,i){
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Image.asset(Contents[i].image,
                          height: 400,),
                        Padding(
                          padding: const EdgeInsets.only(right: 120),
                          child: Text(Contents[i].title,
                            style: TextStyle(fontWeight: FontWeight.bold,
                                fontSize: 30),
                          ),
                        ),
                        SizedBox(height: 15,),
                        Text(Contents[i].description,
                          style: TextStyle(fontSize: 20),)

                      ],
                    ),
                  );
                }),
          ),
          Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(Contents.length,
                        (index) => buildDot(index, context)
                )
            ),
          ),
          Container(
            height: 60,
            margin: EdgeInsets.all(40),
            width: double.infinity,
            child: TextButton(
              onPressed: (){
                if(currentIndex == Contents.length -1){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=> LandingScreen()));

                }
                _controller.nextPage(duration: Duration(microseconds: 100), curve: Curves.bounceIn,
                );
              },

              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(color: Colors.black)),
                  )
              ),
              child: Text(currentIndex == Contents.length -1? "Continue":"Next",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),),



            ),
          )
        ],
      ),
    );
  }
  Container buildDot(int index, BuildContext context){
    return Container(
      height: 10,
      width: currentIndex == index ? 25 :10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.black
      ),
    );
  }
}
