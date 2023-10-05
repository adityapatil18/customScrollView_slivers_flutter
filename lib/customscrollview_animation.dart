import 'package:flutter/material.dart';

class CustomScrollViewWithAnimation extends StatelessWidget {
  const CustomScrollViewWithAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    'https://static1.cbrimages.com/wordpress/wp-content/uploads/2019/06/Akatsuki-Ranked.jpg',
                    fit: BoxFit.cover,
                  ),
                  Container(
                    color: Colors.black.withOpacity(0.3),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 16, bottom: 16),
                      child: TweenAnimationBuilder(
                        tween: Tween(begin: 1.0, end: 0.0),
                        duration: Duration(milliseconds: 500),
                        builder: (context, value, child) {
                          return Transform.scale(
                            scale: 1 + value,
                            child: Opacity(
                              opacity: 1 - value,
                              child: Text(
                                'Akatsuki Assemble',
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return ListTile(
                title: Text('Item $index'),
              );
            }, childCount: 20),
          ),
        ],
      ),
    );
  }
}
