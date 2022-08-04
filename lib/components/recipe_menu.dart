import 'package:flutter/material.dart';

class RecipeMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.only(top:20),
      child: Row( // 메뉴 아이템의 방향이 수평 방향이기 때문
        children: [
          _buildMenuItem(Icon.food_bank, "ALL"), // 재사용
          SizedBox(width: 25,),
          _buildMenuItem(Icon.emoji_food_beverage, "Coffe"), // 재사용
          SizedBox(width: 25,),
          _buildMenuItem(Icon.fastfood, "Burger"), // 재사용
          SizedBox(width: 25,),
          _buildMenuItem(Icon.local_pizza, "pizza"), // 재사용
        ],
      )
    );
  }

  // 재사용할 수 있는 함수
  // widget은 모든 위젯의 부모이기 때문에 함수리턴타입은 widget으로 하는 것이 좋다.
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
          Icon(mIcon, color: Colors.redAccent, size:30,),
          SizedBox(height: 5,),
          Text(
            text,
            style: TextStyle(color: Colors.black87),
          )
        ],
      ),
    );
  }
}
