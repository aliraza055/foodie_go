class MexcianModel {
   String name;
  String image;
  String price;
  MexcianModel({required this.name,required this.image,required this.price});
 static List<MexcianModel> getPizzaItems(){
    return [
      MexcianModel(name: 'Cheese Pizza', image: 'images/tocos1.png',price: '1250'),
      MexcianModel(name: 'Cheese Pizza', image: 'images/tocos2.png',price: '1250'),
      MexcianModel(name: 'Cheese Pizza', image: 'images/tocos3.png',price: '1250'),
      MexcianModel(name: 'Cheese Pizza', image: 'images/tocos4.png',price: '1250'),
      MexcianModel(name: 'Cheese Pizza', image: 'images/tocos5.png',price: '1250'),
      MexcianModel(name: 'Cheese Pizza', image: 'images/tocos6.png',price: '1250'),
    ];

  }
}