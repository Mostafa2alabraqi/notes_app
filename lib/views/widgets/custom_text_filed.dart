import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({required this.hint, this.maxLines = 1 ,super.key});

  final String hint;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return  TextField(
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
        hintText: hint,
        hintStyle: TextStyle(
          color: kPrimaryColor,
          fontSize: 26,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: color ?? Colors.white,),
      );
  }
}