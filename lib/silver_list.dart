import 'package:flutter/material.dart';

class SilverList1 extends StatelessWidget {
  const SilverList1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          floating: true,
          pinned: false,
          flexibleSpace: FlexibleSpaceBar(
            title: Text('Animated Appbar'),
          ),
        ),
        SliverList(
            delegate: SliverChildListDelegate([
          for (var i = 1; i <= 100; i++)
            ListTile(
              leading: CircleAvatar(),
              title: Text(i.toString()),
            )
        ]))
      ]),
    );
  }
}
