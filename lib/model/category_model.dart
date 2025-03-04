
class CategoryModel {
  String image;
  String name;

  CategoryModel({required this.image, required this.name});

  static List<CategoryModel> getCategoryModel() {
    return [
      CategoryModel(image: 'ima', name: 'Pizza'),
      CategoryModel(image: 'ididi', name: 'Burger'),
      CategoryModel(image: 'ima', name: 'Chinese'),
      CategoryModel(image: 'ididi', name: 'Mexican'),
    ];
  }
}

