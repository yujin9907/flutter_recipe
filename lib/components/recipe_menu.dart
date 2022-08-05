import 'package:flutter/material.dart';

class RecipeMenu extends StatelessWidget {
  double? gap;

  RecipeMenu({
    Key? key,
    double? this.gap = 25, // 이런식으로 디폴트 값을 지정해줄 수도 있음
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildMenuItem(Icons.food_bank, "ALL"),
        SizedBox(
          width: 20,
        ),
        _buildMenuItem(Icons.emoji_food_beverage, "Coffe"),
        SizedBox(
          width: 20,
        ),
        _buildMenuItem(Icons.fastfood, "buger"),
        SizedBox(
          width: 20,
        ),
        _buildMenuItem(Icons.local_pizza, "pizza"),
        SizedBox(
          width: 20,
        ),
        SizedBox(
          width: gap,
        ),
      ],
    );
  }

  Widget _buildMenuItem(IconData mIcon, String text) {
    return Container(
      width: 60,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.black12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            mIcon,
            color: Colors.redAccent,
            size: 30,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            text,
            style: TextStyle(color: Colors.black87),
          )
        ],
      ),
    );
  }
}
