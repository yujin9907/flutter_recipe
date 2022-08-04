import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_recipe/components/recipe_list_item.dart';
import 'package:flutter_recipe/components/recipe_menu.dart';
import 'package:flutter_recipe/components/recipe_title.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildRecipeAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20), // 바디에 수평으로 여백
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RecipeTitle(),
            RecipeMenu(),
            RecipeListItem("coffe", "Made Coffe"), // 이래서 아이템에서 생성자를 받음
            RecipeListItem("burger", "Made Burger"),
            RecipeListItem("pizze", "Made Pizza"),
          ],
        ),
      ),
    );
  }

  AppBar _buildRecipeAppBar() { // 타입을 왜 앱바로 주지? 리턴에 앱바하려고?
    return AppBar(
      backgroundColor: Colors.white, // 앱바 배경, 파란색에서 화이트로 변경
      elevation: 1.0, // 앱바 그림자 효과
      actions: [
        Icon(CupertinoIcons.search, // 검색 아이콘 추가
          color: Colors.black,),
        SizedBox(width: 15,),
        Icon(CupertinoIcons.heart, color: Colors.redAccent,), // 하트 아이콘 추가
        SizedBox(width: 15,)
      ],
    );
  }
}

