import 'package:flutter/material.dart';


class ColorItem extends StatelessWidget {
  const ColorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: const CircleAvatar(
        radius: 32,
        backgroundColor: Colors.blueGrey,
      ),
    );
  }
}

class ColorListView extends StatelessWidget {
  const ColorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32 * 2,
      child: ListView.builder(
        scrollDirection:  Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return ColorItem();
        },
      ),
    );
  }
}