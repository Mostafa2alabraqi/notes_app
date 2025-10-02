import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return  TextField(
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
        hintText: 'Title',
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