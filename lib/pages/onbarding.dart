import 'package:flutter/material.dart';
import 'package:foodie_go/pages/singup.dart';
import 'package:foodie_go/services/widget_serves.dart';

class OnBoaridng extends StatefulWidget {
  const OnBoaridng({super.key});

  @override
  State<OnBoaridng> createState() => _ImagePickerState();
}

class _ImagePickerState extends State<OnBoaridng> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(top: 48),
        child: Column(
          children: [
            Image.asset('images/onboard.png',width: 1000,),
            SizedBox(height: 20,),
            Text("The Fastest\nFood Delivery",
            style: AppServices().mainHeadingStyle(),),
            Text('Craving Something Delicious?\nOrder now and get your favourite\n  delivery food!',
            textAlign: TextAlign.center,
            style: AppServices().simpleTextStyle(),),
            SizedBox(height: 20,),
            GestureDetector(
              onTap:() {
            Navigator.pushReplacement(
           context,
           MaterialPageRoute(builder: (_) => Signup()),
           );
              }
              child: Container(
                height:50,
                width: MediaQuery.of(context).size.width/2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xff8c592a)
                ),
                child: Center(child: Text('Get Started',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:20 ),)),
              ),
            )

          ],
        ),
      ),
    );
  }
}