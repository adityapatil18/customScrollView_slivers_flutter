import 'package:flutter/material.dart';

class SliverAppBarPractice extends StatelessWidget {
  const SliverAppBarPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: CustomScrollView(
        slivers: [
          // sliverapp bar
          SliverAppBar(
            backgroundColor: Colors.deepPurple,
            leading: Icon(
              Icons.menu,
            ),
            expandedHeight: 300,
            floating: false,
            pinned: true,
            title: Text('S L I V E R A P P B A R'),
            centerTitle: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: Colors.teal,
              ),
              title: Text('S L I V E R A P P B A R'),
              centerTitle: true,
            ),
          ),

          //sliver items

          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 400,
                  color: Colors.deepPurple[300],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 400,
                  color: Colors.deepPurple[300],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 400,
                  color: Colors.deepPurple[300],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
