import 'package:flutter/material.dart';
import 'package:foodie_go/services/shared_pref.dart';
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
  TextEditingController addressController=TextEditingController();
  int count=1;
  int basePrice=0;
  String? address;
  getSharedPref()async{
    address=await SharedPrefercesHelper().getUserAdress();
setState(() {
  
});
  }
  @override
  void initState() {
    basePrice=int.parse(widget.price);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 40,left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: ()=>Navigator.pop(context),
              child: Container(
                height: 30,
                width:30 ,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Icon(Icons.arrow_back,color: Colors.white,))),
            SizedBox(height: 30,),
            Center(child: Image.asset(widget.image,height: MediaQuery.of(context).size.height/3,fit: BoxFit.contain,)),
            SizedBox(height: 10,),
            Text(widget.name,style: AppServices().mainHeadingStyle(),),
            SizedBox(height: 10,),
            Text("Rs:${widget.price}",style: AppServices().mainHeadingStyle(),),
            SizedBox(height: 40,),
            Center(child: Text('Quantity',style: AppServices().whiteTextStyle(),)),
             SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    setState(() {
                      count++;
                      basePrice+=int.parse(widget.price);
                    });
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.red
                    ),
                    child: Center(child: Icon(Icons.add,color: Colors.white,)),),
                ),
                  SizedBox(width: 10,),
                  Text('$count',style: TextStyle(fontSize: 30),),
                  SizedBox(width: 10,),
                   GestureDetector(
                    onTap: (){
                      if(count>1){
                        setState(() {
                           count--;
                        basePrice-=int.parse(widget.price);                    
                        });
                      }
                    },
                     child: Container(
                      padding: EdgeInsets.only(bottom: 15),
                                       height: 30,
                                       width: 30,
                                       decoration: BoxDecoration(
                      color: Colors.red
                                       ),
                                       child: Icon(Icons.minimize,color: Colors.white,),),
                   ),
              ],
            ),
            SizedBox(height: 20,),
            Center(child: Text("Rs:$basePrice",style:AppServices().mainHeadingStyle() ,)),
            SizedBox(height: 20,),
            Center(
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width/2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.brown
                ),child: Center(child: Text("Order Now",style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white))),
              ),
            ),
           
          ],
        ),
      ),
    );
  }
  Future penBox ()async{
  return showDialog(
    context: context,
     builder: (context){
      return AlertDialog(
        content: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Row(
                  children: [
                     GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.cancel)),
                Text("Add the Address",style: TextStyle(
                fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green.shade400
                ),)

                  ],
                ),
               
                SizedBox(height: 20,),
                Text("Add Address"),
                TextField(
                  controller: addressController,
                )
              ],
            ),
          ),
        ),
        
      );
     });

}
}
