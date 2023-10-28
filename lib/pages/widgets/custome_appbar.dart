import 'package:flutter/material.dart';
import 'package:notes_app/pages/widgets/custome_search_icons.dart';

class CustomeAppBar extends StatelessWidget {
  const CustomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text(
          'Notes',
          style: TextStyle(fontSize: 30),
        ),
        SizedBox(
          width: 247,
        ),
        CustomeSearchIcon(),
      ],
    );
  }
}
