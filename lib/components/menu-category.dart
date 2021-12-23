// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:restaurant_app/theme/theme.dart';

class MenuCategory extends StatelessWidget {
  final String categoryName;
  final String imagePath;

  MenuCategory({
    this.imagePath,
    this.categoryName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 7),
      decoration: BoxDecoration(
          border: Border.all(
            color: borderColor,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(4)),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image(
              image: AssetImage('assets/images/category-image/' + imagePath),
              height: 40,
              width: 40,
            ),
            Text(categoryName, style: categoryTextStyle)
          ],
        ),
      ),
    );
  }
}
