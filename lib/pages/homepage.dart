import 'package:flutter/material.dart';
import 'package:foodie_go/model/burger_model.dart';
import 'package:foodie_go/model/category_model.dart';
import 'package:foodie_go/model/chinese_model.dart';
import 'package:foodie_go/model/mexcian_model.dart';
import 'package:foodie_go/model/pizza_model.dart';
import 'package:foodie_go/pages/categorytile.dart';
import 'package:foodie_go/pages/foodtile.dart';
import 'package:foodie_go/services/widget_serves.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  List<CategoryModel> items=[];
  List<PizzaModel> pizzaItems=[];
  List<BurgerModel>burgerItems=[];
  List<ChineseModel>chineseItems=[];
  List<MexcianModel>mexicanItems=[];
  int _selectIndex=0;
  @override
  void initState() {
    super.initState();
    items=CategoryModel.getCategoryModel();
    pizzaItems=PizzaModel.getPizzaItems();
    burgerItems=BurgerModel.getBurgers();
    chineseItems=ChineseModel.getPizzaItems();
    mexicanItems=MexcianModel.getPizzaItems();
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
                  child: ClipOval(child: Image.asset('images/image.jpg',height: 60,width: 60,fit: BoxFit.cover,)),
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
            Container(
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
           SizedBox(height: 16,),
            _selectIndex==0?
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.zero,
                itemCount: pizzaItems.length,
                gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.6,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10
                  ) , 
                itemBuilder: (context,index){
                  return FooTile(
                    image: pizzaItems[index].image,
                     name: pizzaItems[index].name, 
                     price: pizzaItems[index].price
                     );
                }),
            ):
            _selectIndex ==1 ?
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.zero,
                itemCount: burgerItems.length,
                gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.6,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10
                  ) , 
                itemBuilder: (context,index){
                  return FooTile(
                    image: burgerItems[index].image,
                     name: burgerItems[index].name, 
                     price: burgerItems[index].price,
                     );
                }),
            ):
            _selectIndex==2 ?
             Expanded(
              child: GridView.builder(
                padding: EdgeInsets.zero,
                itemCount: chineseItems.length,
                gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.6,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10
                  ) , 
                itemBuilder: (context,index){
                  return FooTile(
                    image: chineseItems[index].image,
                     name: chineseItems[index].name, 
                     price: chineseItems[index].price
                     );
                }),
            ):
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.zero,
                itemCount: mexicanItems.length,
                gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.6,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10
                  ) , 
                itemBuilder: (context,index){
                  return FooTile(
                    image: mexicanItems[index].image,
                     name: mexicanItems[index].name, 
                     price: mexicanItems[index].price
                     );
                }),
            )
          ],
        ),
      ),
    );
  }
}


