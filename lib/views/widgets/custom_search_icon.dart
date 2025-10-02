import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 46,
      width: 46,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color.fromARGB(74, 59, 59, 59),
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Icon(Icons.search,size: 28,color: Colors.white,),
    );
  }
}