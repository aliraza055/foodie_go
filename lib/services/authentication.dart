
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:foodie_go/pages/homepage.dart';
import 'package:foodie_go/services/shared_pref.dart';
import 'package:foodie_go/services/toast.dart';
import 'package:random_string/random_string.dart';

class Authentication {
     //User? user = FirebaseAuth.instance.currentUser;
  Future<void> signUp(BuildContext context, String email, String password, String username) async {
    try {
       await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      String id=randomAlphaNumeric(10);
      Map<String,dynamic> userInfo={
        'Name':username,
        "Gmail":email
      };
    await  sendData(userInfo,id );
    await  SharedPrefercesHelper().setUserGmail(email);
     await  SharedPrefercesHelper().setUserName(username);
      

      //   User? user = FirebaseAuth.instance.currentUser;
      // if (user != null && username != null) {
      //   await user.updateDisplayName(username);
      // }
     // saveData(email, username);
      ToastError().toast("You have successfully created an account",Colors.green);
      Navigator.pushReplacement(context,MaterialPageRoute(builder: (_)=>const HomePage ()));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        ToastError().toast("The password provided is too weak!",Colors.red);
      } else if (e.code == 'email-already-in-use') {
        ToastError().toast("The account already exists!",Colors.red);
      } else {
        ToastError().toast("Error: ${e.message}",Colors.red);
      }
    } catch (e) {
      ToastError().toast("An unexpected error occurred: $e",Colors.red);
    }
  }
  Future<void> singIn(String gmail,String password)async{
    try{
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: gmail, password: password);
        ToastError().toast("Login successful", Colors.green);
     } on FirebaseAuthException catch(e){
        if(e.code=='user-not-found'){
          ToastError().toast('user not found with this gmail', Colors.black);
        }else if(e.code=='wrong-password'){
          ToastError().toast('incorrect password', Colors.red);
        }else{
          ToastError().toast('Error:${e.message}', Colors.red)  ;      }
    }
  }
      // Future<void> saveData(String email,username)async{
      //   await FirebaseFirestore.instance.collection('users').doc(user!.uid).set({
      //     'uid':user!.uid,
      //     'gmail':email,
      //     'username':username
      //   });

      // }
      Future sendData(Map<String,dynamic>userInfo,String id)async{
        return await FirebaseFirestore.instance.collection("users").doc(id).set(userInfo,);
      }

}
