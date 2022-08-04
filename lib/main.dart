import 'package:flutter/material.dart';
import 'package:flutter_recipe/pages/recipe_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) { 
    return MaterialApp( // 레시피 제목 수정
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "PatuaOne"), // 레시피(제목) 폰트 변경 yaml 폴더에 있음
      home: RecipePage(),
    );
  }
}
