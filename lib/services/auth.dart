import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_app_messenger/modal/user.dart';

class AuthMethods {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  OurUser _userFromFirebaseUser(FirebaseUser user){
return user!=null ?OurUser(userId: user.uid):null;

  }

  Future signInWithEmailPassword(String email, String password) async {
    try {
      UserCredential userCredential = await _auth
          .signInWithEmailAndPassword(
          email: email,
          password: password
      );
      FirebaseUser firebaseUser = userCredential.user;
      return _userFromFirebaseUser(firebaseUser);


    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }
  Future signUpWithEmailPassword(String email, String password) async{
    try
    { UserCredential userCredential = await _auth
    .createUserWithEmailAndPassword(email: email, password: password);
    FirebaseUser firebaseUser = userCredential.user;
    return _userFromFirebaseUser(firebaseUser);

    }catch(e){
      print(e.toString());
    }
  }
  Future resetPass(String email)async{
    try{
      return await _auth.sendPasswordResetEmail(email: email);
    }catch(e){
      print(e.toString());
    }
  }
  Future signOut() async{
    try{
      return _auth.signOut();
    }catch(e){
      print(e.toString());
    }
  }
}
