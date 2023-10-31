import 'package:flutter/material.dart';
import 'package:notes_app/pages/widgets/constance.dart';

class CutomeTextField extends StatelessWidget {
  const CutomeTextField({super.key, required this.hintText, this.MaxLines = 1});
  final String hintText;
  final int MaxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: MaxLines,
      cursorColor: kprimaryColor,
      decoration: InputDecoration(
        hintText: hintText,
        // hintStyle: TextStyle(color: KprimaryColor),
        border: buildBorder(color: Colors.white),
        enabledBorder: buildBorder(color: kprimaryColor),
        focusedBorder: buildBorder(color: kprimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder({color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
