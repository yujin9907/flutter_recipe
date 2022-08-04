import 'package:flutter/material.dart';

// stl 까먹지 말고 활용
class RecipeTitle extends StatelessWidget {
//  const ({Key? key}) : super(key: key);
// 생성자 역할이라 그랬는데 빼는 이유?

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Text(
        "Recipes",
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}
