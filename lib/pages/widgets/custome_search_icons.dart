import 'package:flutter/material.dart';

class CustomeSearchIcon extends StatelessWidget {
  const CustomeSearchIcon({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 47,
      width: 47,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withOpacity(000.05),
      ),
      child: Center(
        child: Icon(
          icon,
          size: 37,
        ),
      ),
    );
  }
}
