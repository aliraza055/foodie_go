
import 'package:flutter/material.dart';
import 'package:foodie_go/services/widget_serves.dart';

class CategoryTile extends StatelessWidget {
  final String image;
  final String name;
  final bool isSelected;

  CategoryTile({required this.image, required this.name, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: isSelected ? Colors.red : Color(0xffececf8), // Change color based on selection
      ),
      child: Row(
        children: [
          Image.asset(image, height: 40, width: 40, fit: BoxFit.cover),
          SizedBox(width: 10),
          Text(name, style: AppServices().whiteTextStyle()),
        ],
      ),
    );
  }
}