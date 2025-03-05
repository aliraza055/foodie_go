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
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.only(left:10,top: 16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.brown.shade100),
        borderRadius: BorderRadius.circular(8)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Image.asset(image,height: 150,width: 150,fit: BoxFit.contain,)),
          SizedBox(height: 10,),
          Text(name,style: AppServices().whiteTextStyle(),),
          SizedBox(height: 10,),
          Text("Rs:$price",style: AppServices().whiteTextStyle(),),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
               // margin: EdgeInsets.only(right: 10),
                height: 40,
                width: 80,
                decoration: BoxDecoration(
                 borderRadius: BorderRadius.only(topLeft:Radius.circular(30)),
                  color: Colors.red
                ),
                child: Icon(Icons.arrow_forward,color: Colors.white,),
              ),
            ],
          )
      
        ],
      ),
    );
  }
}