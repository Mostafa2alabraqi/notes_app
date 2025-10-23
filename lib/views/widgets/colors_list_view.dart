import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isSelected, required this.color});

  final bool isSelected;

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child:
          isSelected
              ? AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                padding: const EdgeInsets.only(bottom: 8.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: color,
                      blurRadius: 6,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: CircleAvatar(
                  radius: 32,
                  backgroundColor: color,
                  child: CircleAvatar(radius: 31, backgroundColor: color),
                ),
              )
              : CircleAvatar(radius: 32, backgroundColor: color),
    );
  }
}

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

int currentItemIndex = 0;

List<Color> colors = const [
  Color(0xffD9ED92),
  Color(0xffB5E48C),
  Color(0xff99D98C),
  Color(0xff76C893),
  Color(0xff52B69A),
  Color(0xff2d6a4f),
  Color(0xff2d6a4f),
  Color(0xff74c69d),
  Color(0xff34A0A4),
  Color(0xff168AAD),
  Color(0xff1A759F),
  Color(0xff1E6091),
  Color(0xff184E77),
  Color(0xffEDC4B3),
  Color(0xffE6B8A2),
  Color(0xffDEAB90),
  Color(0xffD69F7E),
  Color(0xffCD9777),
  Color(0xffC38E70),
  Color(0xffB07D62),
  Color(0xff9D6B53),
  Color(0xff8A5A44),
  Color(0xffFFF0F3),
  Color(0xffFFCCD5),
  Color(0xffFFB3C1),
  Color(0xffFF8FA3),
  Color(0xffFF758F),
  Color(0xffFF4D6D),
  Color(0xffC9184A),
  Color(0xffA4133C),
  Color(0xff800F2F),
  Color(0xff590D22),
];

class _ColorListViewState extends State<ColorListView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 39 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              currentItemIndex = index;
              setState(() {});
            },
            child: ColorItem(isSelected: currentItemIndex == index,
              color: colors[index],
            ),
          );
        },
      ),
    );
  }
}
