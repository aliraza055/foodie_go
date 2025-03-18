import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class ToastError{
  void toast( String message,Color bColor){
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: bColor,
        textColor: Colors.white,
        fontSize: 160,
      );
  }
}