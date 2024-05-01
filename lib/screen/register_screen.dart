import 'package:flutter/material.dart';
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool selected = false;
  TextEditingController _userName = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController  _confirmPassword = TextEditingController();

  final _regKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/logo/3903482.jpg",width: MediaQuery.of(context).size.width,height:300 ),
            const Padding(padding: EdgeInsets.only(left: 15),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Sing Up",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),

                ],
              ),
            ),
            const Padding(padding:EdgeInsets.all(15.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Create new account",style: TextStyle(fontSize: 18),
                  )
                ],
              ),
            ),
            const SizedBox(height: 35,),
            Form(key: _regKey,
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(15.0),
                    child: TextFormField(controller: _userName,
                      decoration: const InputDecoration(labelText: "user name",labelStyle: TextStyle(color: Colors.black54,fontSize: 19),
                          hintText: "Enter User name",suffixIcon: Icon(Icons.verified)),
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return "please Enter User Name";
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      controller: _email,
                      decoration:  const InputDecoration(
                        labelText: "Email",labelStyle: TextStyle(color: Colors.black45),
                      ),
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return "please Enter email";
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      controller: _password,
                      obscureText: true,
                      obscuringCharacter: "*",
                      decoration: const InputDecoration(labelText: "password",labelStyle: TextStyle(color: Colors.black,fontSize: 19),
                        hintText: "Enter password",hintStyle: TextStyle(color: Colors.black),
                        suffixIcon: Icon(Icons.visibility_off),
                      ),
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return null;
                        }
                      },
                    ),

                  ),
                  Padding(padding: const EdgeInsets.all(15.0),
                    child: TextFormField(controller: _confirmPassword,
                      obscureText: true,
                      obscuringCharacter: "*",
                      decoration: const InputDecoration(
                        labelText: "confirm password",labelStyle: TextStyle(color: Colors.black,fontSize: 20),
                        hintText: "Enter confirm password",hintStyle: TextStyle(color: Colors.black),
                        suffixIcon: Icon(Icons.visibility_off),
                      ),
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return  "Please Enter confirm password";
                        }
                        return null;
                      },
                    ),

                  )
                ],
              ),
            ),
            Row(
              children: [
                Checkbox(value: selected, onChanged: (bool? value){
                  setState(() {
                    selected = value!;
                  });
                },
                  activeColor: Colors.black,
                ),
                Expanded(child: const Text("I agree to terms & coditiones")
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            OutlinedButton(onPressed: (){
              if(_regKey.currentState!.validate()){
                Navigator.pushNamed(context, "/login screen");
              }
            }, child: Text("Login",style: TextStyle(fontWeight: FontWeight.bold),),
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.black),
                  foregroundColor: MaterialStateProperty.all(Colors.white54),
                  minimumSize: MaterialStateProperty.all(Size(300, 50))),
            )
          ],
        ),
      ),
    );
  }
}
