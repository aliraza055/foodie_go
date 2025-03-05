import 'package:flutter/material.dart';
import 'package:foodie_go/services/widget_serves.dart';

class DeatailPage extends StatefulWidget {
  String image;
  String name;
  String price;
  //String des;
   DeatailPage({required this.image, required this.name,required this.price,});

  @override
  State<DeatailPage> createState() => _DeatailPageState();
}

class _DeatailPageState extends State<DeatailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 40,left: 10),
        child: Column(
          children: [
            Icon(Icons.arrow_back),
            SizedBox(height: 30,),
            Image.asset(widget.image,height: 200,width: 200,fit: BoxFit.contain,),
            SizedBox(height: 10,),
            Text(widget.name,style: AppServices().whiteTextStyle(),),
            SizedBox(height: 10,),
            Text(widget.price,style: AppServices().whiteTextStyle(),)
          ],
        ),
      ),
    );
  }
}