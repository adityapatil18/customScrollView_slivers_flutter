import 'package:flutter/material.dart';
import 'package:silver_widgets/main.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: false,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Animated AppBar'),
              background: Image.network(
                "https://i.pinimg.com/originals/97/af/45/97af45319d020e370aa94bd26914e5ee.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverFillRemaining(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'The increment value is :',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '10',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
