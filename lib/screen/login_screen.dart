import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  final _loginKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset("assets/logo/3903482.jpg",
                width: MediaQuery.of(context).size.width,
                height: 300,),
              const Padding(padding: EdgeInsets.only(left: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Welcome",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              const Padding(padding: EdgeInsets.only(left: 15.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("please login or sign up to continue",style: TextStyle(fontSize: 16),)
                  ],),

              ),
              const SizedBox(
                height: 40,
              ),
              Form(key: _loginKey,
                child: Column(
                  children: [
                    Padding(padding: const EdgeInsets.all(15.0),
                      child: TextFormField(decoration: const InputDecoration(labelText: "Email",labelStyle: TextStyle(color: Colors.black45,fontSize: 20),
                          hintText: "Enter your email",hintStyle: TextStyle(color: Colors.black),
                          suffixIcon: Icon(Icons.verified)
                      ),
                        controller:  _email,
                        validator: (value){
                          if(value == null || value.isEmpty){
                            return "please enter your email ID";
                          }
                        },
                      ),
                    ),
                    Padding(padding: const EdgeInsets.all(15.0),
                      child:  TextFormField(obscureText: true,
                        obscuringCharacter: "*",
                        decoration: const InputDecoration(
                          labelText: "password",labelStyle: TextStyle(color: Colors.black,fontSize: 20),
                          hintText: "Enter your password",hintStyle: TextStyle(color: Colors.black),
                          suffixIcon: Icon(Icons.verified),),
                        controller: _password,
                        validator: (value){
                          if(value == null || value.isEmpty){
                            return "please enter password";
                          }
                        },
                      ),)
                  ],
                ),
              ),
              const SizedBox(
                height: 55,
              ),
              ListTile(title: Column(
                children: [
                  OutlinedButton(onPressed: (){
                    if(_loginKey.currentState!.validate()){
                      Navigator.pushNamed(context, "/signup screen");
                    }
                  },
                    child: const Text("Login",style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    style: ButtonStyle(foregroundColor: MaterialStateProperty.all(Colors.white),
                        backgroundColor: MaterialStateProperty.all(Colors.black),
                        minimumSize: MaterialStateProperty.all(const Size(300, 50))
                    ),),
                  const SizedBox(width: 10,
                    height:10,),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(child: Divider(thickness: 0.6,
                        color: Colors.white54,)),
                      Padding(padding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
                        child: Text("or",style: TextStyle(color: Colors.black,)
                          ,) ,
                      ),
                      Expanded(child: Divider()),
                      SizedBox(width: 10,
                        height: 10,)
                    ],
                  ),
                  Padding(padding: const EdgeInsets.only(top: 15.0),
                    child:  OutlinedButton.icon(onPressed: (){},
                      icon: const Icon(Icons.facebook),
                      label: const Text("login with facebook"),style: ButtonStyle(foregroundColor: MaterialStateProperty.all(Colors.white),
                          backgroundColor: MaterialStateProperty.all(const Color(0xFF1877f8)),
                          minimumSize: MaterialStateProperty.all(const Size(300,50))
                      ),),
                  ),
                  Padding(padding: const EdgeInsets.only(top: 15.0),child: OutlinedButton.icon(onPressed: (){}, icon: const Icon(Bootstrap.google,color: Colors.black,), label: const Text("login with google",style: TextStyle(color: Colors.black),),
                    style: ButtonStyle(foregroundColor: MaterialStateProperty.all(Colors.white60),
                        backgroundColor: MaterialStateProperty.all(Colors.transparent),
                        minimumSize: MaterialStateProperty.all(const Size(300, 50))),
                  ),
                  ),
                  Padding(padding: const  EdgeInsets.only(top: 15.0),
                    child:  OutlinedButton.icon(onPressed: (){},
                      icon: const Icon(Icons.apple,color: Colors.black,),
                      label: const Text("Login With Apple ",style: TextStyle(color: Colors.black),),
                      style: ButtonStyle(foregroundColor: MaterialStateProperty.all(Colors.white),
                          backgroundColor: MaterialStateProperty.all(Colors.transparent),
                          minimumSize: MaterialStateProperty.all(const Size(300, 50))),),)
                ],
              ),)

            ],
          ),
        ),
      ),
    );
  }
}

