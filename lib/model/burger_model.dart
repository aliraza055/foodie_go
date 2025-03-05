class BurgerModel {
  String image;
  String name;
  String price;
  BurgerModel({required this.image, required this.name, required this.price});
static List<BurgerModel>  getBurgers(){
    return [
      BurgerModel(image: 'images/burger1.png', name: 'burger', price: '5959'),
      BurgerModel(image: 'images/burger2.png', name: 'burger', price: '5959'),
      BurgerModel(image: 'images/burger3.png', name: 'burger', price: '5959'),
      BurgerModel(image: 'images/burger4.png', name: 'burger', price: '5959'),
      BurgerModel(image: 'images/burger5.png', name: 'burger', price: '5959'),
      BurgerModel(image: 'images/burger6.png', name: 'burger', price: '5959'),
    ];
  }
  
}
