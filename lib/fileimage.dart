import 'package:flutter/material.dart';
import 'package:foodie_go/services/widget_serves.dart';

class ImagePicker extends StatefulWidget {
  const ImagePicker({super.key});

  @override
  State<ImagePicker> createState() => _ImagePickerState();
}

class _ImagePickerState extends State<ImagePicker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 48),
        child: Column(
          children: [
            Image.asset('images/onboard.png',width: 1000,),
            SizedBox(height: 20,),
            Text("The Fastest\nFood Delivery",style: AppServices().mainHeadingSytle(),),
            Text('Craving Something Delicious?\nOrder now and get your favourite\n  delivery food!',
            textAlign: TextAlign.center,
            
            )

          ],
        ),
      ),
    );
  }
}