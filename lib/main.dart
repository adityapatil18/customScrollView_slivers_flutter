import 'package:flutter/material.dart';
import 'package:silver_widgets/customscrollview_animation.dart';
import 'package:silver_widgets/home_page.dart';
import 'package:silver_widgets/madara_uchiha.dart';
import 'package:silver_widgets/silver_list.dart';
import 'package:silver_widgets/sliver_appbar_practice.dart';

void main() {
  runApp(CustomScrollViewPractice());
}

class CustomScrollViewPractice extends StatelessWidget {
  const CustomScrollViewPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(appBarTheme: AppBarTheme(color: Colors.purple)),
      home: SliverAppBarPractice(),
    );
  }
}
