import 'package:flutter/material.dart';

class Singup extends StatefulWidget {
  const 
Singup({super.key});

  @override
  State<
Singup> createState() => _SingupState();
}

class _SingupState extends State<Singup> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height:MediaQuery.of(context).size.height/3,
              decoration: BoxDecoration(
                color: Color(0xffffefbf),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                  )
              ),
              child: Column(
                children: [
                  Center(child: Image.asset('images/logo2.png',height: 100,width: 100,fit: BoxFit.contain,)),
                 Center(
                  child: Image.asset('images/logo2.png',height: 100,width: 100,fit: BoxFit.contain,)),

                ],
              ),
            ),
            Positioned(
              right: 100,
              top: 500,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }
}