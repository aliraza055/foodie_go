import 'package:flutter/material.dart';

class PizzaModel {
  String name;
  String image;
  PizzaModel({required this.name,required this.image});
  List<PizzaModel> getPizzaItems(){
    return [
      PizzaModel(name: 'Cheese Pizza', image: 'images/pizza1.png'),
      PizzaModel(name: 'Cheese Pizza', image: 'images/pizza2.png'),
      PizzaModel(name: 'Cheese Pizza', image: 'images/pizza3.png'),
      PizzaModel(name: 'Cheese Pizza', image: 'images/pizza4.png'),

    ];

  }
}
  
