import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomeGrid extends StatefulWidget {
  const HomeGrid({super.key});

  @override
  State<HomeGrid> createState() => _HomeGridState();
}

class _HomeGridState extends State<HomeGrid> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GridView.builder(
          shrinkWrap: true,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: ((context, index) {
            return Container(
              height: 100,
              color: Colors.red,
            );
          })),
    );
  }
}
