
class CategoryModel {
  String image;
  String name;

  CategoryModel({required this.image, required this.name});

  static List<CategoryModel> getCategoryModel() {
    return [
      CategoryModel(image: 'images/pizza.png', name: 'Pizza'),
      CategoryModel(image: 'images/burger.png', name: 'Burger'),
      CategoryModel(image: 'images/chinese.png', name: 'Chinese'),
      CategoryModel(image: 'images/tacos.png', name: 'Mexican'),
    ];
  }
}
class CategoryMOdell{
  String image;
  String name;
  CategoryMOdell({required this.image,required this.name});
List<CategoryMOdell>  getModel(){
  return [
    CategoryMOdell(image: 'imager',name: 'pizza')
  ];
}
}

