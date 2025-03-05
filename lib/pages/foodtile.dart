import 'package:flutter/material.dart';
import 'package:foodie_go/services/widget_serves.dart';

class FooTile extends StatelessWidget {
  String image;
  String name;
  String price;
   FooTile({required this.image, required this.name,required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: Column(
        children: [
          Image.asset(image,height: 50,width: 50,fit: BoxFit.cover,),
          SizedBox(height: 10,),
          Text(name,style: AppServices().whiteTextStyle(),),
          SizedBox(height: 10,),
          Text(price,style: AppServices().whiteTextStyle(),)

        ],
      ),
    );
  }
}