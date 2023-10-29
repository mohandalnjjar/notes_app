import 'package:flutter/material.dart';
import 'package:notes_app/pages/widgets/custome_search_icons.dart';

class CustomeAppBar extends StatelessWidget {
  const CustomeAppBar(
      {super.key,
      required this.title,
      required this.icon,
      required this.SpaceBetwen});
  final String title;
  final IconData icon;
  final double SpaceBetwen;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 30),
        ),
        SizedBox(
          width: SpaceBetwen,
        ),
        CustomeSearchIcon(
          icon: icon,
        ),
      ],
    );
  }
}
