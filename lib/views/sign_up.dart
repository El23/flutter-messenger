import 'package:flutter/material.dart';
class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController userNameTextEditingController = new TextEditingController();
  TextEditingController emailTextEditingController = new TextEditingController();
  TextEditingController passwordTextEditingController = new TextEditingController();
  TextEditingController repeatPasswordEditingController = new TextEditingController();




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
                controller: userNameTextEditingController,
                style: TextStyle(color: Color(0xff333366)),
                decoration: InputDecoration(
                  hintText: "user name",
                  hintStyle: TextStyle(color: Colors.black38),
                ),
              ),
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
              TextField(
                controller: repeatPasswordEditingController,
                  style: TextStyle(color: Color(0xff333366)),
                  decoration: InputDecoration(
                    hintText: "repeat password",
                    hintStyle: TextStyle(color: Colors.black38),
                  )),

              SizedBox(
                height:8,
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
                  'SIGN UP',
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
                  'SIGN UP WITH GOOGLE',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 8,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("already have account? Sign in now ",style: TextStyle(color: Color(0xff333366)),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
