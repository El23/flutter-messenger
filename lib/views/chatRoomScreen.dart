import 'package:flutter/material.dart';
import 'package:flutter_app_messenger/services/auth.dart';
import 'package:flutter_app_messenger/views/sign_in.dart';

class ChatRoom extends StatefulWidget {
  @override
  _ChatRoomState createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {

  AuthMethods authMethods = new AuthMethods();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "YOUR chat",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              authMethods.signOut();
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> SignIn()));
            },
            child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Icon(Icons.exit_to_app)),
          )
        ],
      ),
    );
  }
}
