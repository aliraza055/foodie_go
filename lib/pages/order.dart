import 'package:flutter/material.dart';
import 'package:foodie_go/services/widget_serves.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          children: [
           Row(
            mainAxisAlignment: MainAxisAlignment.center
            ,
            children: [
              Text("Orders",style: AppServices().mainHeadingStyle(),)
            ],
           ),
           Expanded(
             child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xffececf8),
                borderRadius: BorderRadius.only(topRight:Radius.circular(30),topLeft: Radius.circular(30)),
             
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20,left: 20,right: 20),
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Image.asset('images/pizza.png',height: 150,width: 150,)
                      ],
                    ),
                  )
                ],
              ),
             ),
           )
          ],
        ),
      ),
    );
  }
}