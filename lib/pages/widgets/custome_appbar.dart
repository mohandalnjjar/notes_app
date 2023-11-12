import 'package:flutter/material.dart';
import 'package:notes_app/pages/widgets/custome_search_icons.dart';

class CustomeAppBar extends StatelessWidget {
  const CustomeAppBar({
    super.key,
    required this.title,
    required this.icon,
    required this.SpaceBetwen,
    this.onpressed,
  });
  final String title;
  final IconData icon;
  final double SpaceBetwen;
  final void Function()? onpressed;

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
          onpressed: onpressed,
          icon: icon,
        ),
      ],
    );
  }
}
