import 'package:flutter/material.dart';
import 'package:flutter_app_messenger/services/auth.dart';
import 'package:flutter_app_messenger/views/chatRoomScreen.dart';

class SignUp extends StatefulWidget {
  final Function toggle;
  SignUp(this.toggle);


  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final formKey = GlobalKey<FormState>();
  bool isLoading = false;
  AuthMethods authMethods = new AuthMethods();

  TextEditingController userNameTextEditingController =
      new TextEditingController();
  TextEditingController emailTextEditingController =
      new TextEditingController();
  TextEditingController passwordTextEditingController =
      new TextEditingController();
  TextEditingController repeatPasswordEditingController =
      new TextEditingController();

  SignMeUp() {
    if (formKey.currentState.validate()) {
      setState(() {
        isLoading = true;
      });
      authMethods
          .signInWithEmailPassword(emailTextEditingController.text,
              passwordTextEditingController.text)
          .then((value) {
//        print("${value.uid}");
        Navigator.pushReplacement(context, MaterialPageRoute(
            builder:(context)=>ChatRoom()
        ));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "YOUR chat",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: isLoading
          ? Container(
              child: Center(child: CircularProgressIndicator()),
            )
          : SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Form(
                      key: formKey,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 150,
                          ),
                          TextFormField(
                            validator: (val) {
                              return val.isEmpty || val.length < 3
                                  ? "try another name "
                                  : null;
                            },
                            controller: userNameTextEditingController,
                            style: TextStyle(color: Color(0xff333366)),
                            decoration: InputDecoration(
                              hintText: "user name",
                              hintStyle: TextStyle(color: Colors.black38),
                            ),
                          ),
                          TextFormField(
//                      validator: (val){
//                        return
//                          RegExp(...)
//
//                      },
                            controller: emailTextEditingController,
                            style: TextStyle(color: Color(0xff333366)),
                            decoration: InputDecoration(
                              hintText: "e-mail",
                              hintStyle: TextStyle(color: Colors.black38),
                            ),
                          ),
                          TextFormField(
                              obscureText: true,
                              validator: (val) {
                                return val.length < 8
                                    ? null
                                    : "enter password 8+ characters";
                              },
                              controller: passwordTextEditingController,
                              style: TextStyle(color: Color(0xff333366)),
                              decoration: InputDecoration(
                                hintText: "password",
                                hintStyle: TextStyle(color: Colors.black38),
                              )),
                          TextFormField(
                              controller: repeatPasswordEditingController,
                              style: TextStyle(color: Color(0xff333366)),
                              decoration: InputDecoration(
                                hintText: "repeat password",
                                hintStyle: TextStyle(color: Colors.black38),
                              )),
                          SizedBox(
                            height: 8,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
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
                          ),
                          SizedBox(
                            height: 8,
                          ),
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
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: (){
                                  widget.toggle();
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(vertical: 8),
                                  child: Text(
                                    "already have account? Sign in now ",
                                    style: TextStyle(color: Color(0xff333366)),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
