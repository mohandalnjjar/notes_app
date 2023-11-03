import 'package:flutter/material.dart';
import 'package:notes_app/pages/widgets/constance.dart';

class CutomeButtom extends StatelessWidget {
  const CutomeButtom({super.key, this.OnTap});
  final void Function()? OnTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: OnTap,
      child: Container(
        decoration: BoxDecoration(
          color: kprimaryColor,
          borderRadius: BorderRadius.circular(14),
        ),
        height: 50,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Text(
            'Add',
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
