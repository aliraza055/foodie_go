import 'package:flutter/material.dart';
import 'package:foodie_go/model/category_model.dart';
import 'package:foodie_go/pages/categorytile.dart';
import 'package:foodie_go/services/widget_serves.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CategoryModel> items=[];
  int _selectIndex=0;
  @override
  void initState() {
    super.initState();
    items=CategoryModel.getCategoryModel();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 18,top: 40),
       // color: Colors.amber,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Center horizontally
                  children: [
                    SizedBox( 
                      width: 110,
                      height: 48,
                      child: Image.asset(
                        'images/logo2.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      'Order your favorite food!',
                      style: AppServices().simpleTextStyle(),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: ClipOval(child: Image.asset('images/boy.jpg',height: 60,width: 60,fit: BoxFit.cover,)),
                )
              ],
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 10),
                    margin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                      color: Color(0xffececf8),
                      borderRadius: BorderRadius.circular(10)

                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search food item...'
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Color(0xffef2b39),
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: Icon(Icons.search,color: Colors.white,size: 30,),
                )
              ],
            ),
            SizedBox(height: 30,),
            GestureDetector(
              onTap: (){

              },
              child: Container(
                height: 50,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: items.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                    return GestureDetector(
                      onTap: (){
                         setState(() {
                           _selectIndex=index;
                         });
                      },
                      child: CategoryTile(
                        image: items[index].image,
                         name: items[index].name,
                         isSelected:_selectIndex==index,));
              
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}


