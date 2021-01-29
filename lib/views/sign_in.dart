import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController passwordTextEditingController = new TextEditingController();
  TextEditingController emailTextEditingController = new TextEditingController();




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "YOUR chat",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              SizedBox(height: 150,),
              TextField(
                controller: emailTextEditingController,
                style: TextStyle(color: Color(0xff333366)),
                decoration: InputDecoration(
                  hintText: "e-mail",
                  hintStyle: TextStyle(color: Colors.black38),
                ),
              ),
              TextField(
                controller: passwordTextEditingController,
                  style: TextStyle(color: Color(0xff333366)),
                  decoration: InputDecoration(
                    hintText: "password",
                    hintStyle: TextStyle(color: Colors.black38),
                  )),
              SizedBox(
                height:8,
              ),
              Container(
                alignment: Alignment.center,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Text("forgot your password?",style: TextStyle(color: Color(0xff333366)),),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 24),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xff333366),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  'SIGN IN',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 8,),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 24),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xff336699),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  'SIGN IN WITH GOOGLE',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 8,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Have no account yet? Sign up ",style: TextStyle(color: Color(0xff333366)),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
