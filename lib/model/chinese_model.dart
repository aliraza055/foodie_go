class ChineseModel {
  String name;
  String image;
  String price;
  ChineseModel({required this.name,required this.image,required this.price});
 static List<ChineseModel> getPizzaItems(){
    return [
      ChineseModel(name: 'Cheese Pizza', image: 'images/chinese1.png',price: '1250'),
      ChineseModel(name: 'Cheese Pizza', image: 'images/chinese2.png',price: '1250'),
      ChineseModel(name: 'Cheese Pizza', image: 'images/chinese3.png',price: '1250'),
      ChineseModel(name: 'Cheese Pizza', image: 'images/chinese4.png',price: '1250'),  
    ];

  }
}