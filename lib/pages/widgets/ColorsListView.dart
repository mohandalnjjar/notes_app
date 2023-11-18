import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/pages/widgets/constance.dart';

import '../../cubits/add_note_Cubit/cubit/add_note_cubit_cubit.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({
    super.key,
  });

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentEndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 27 * 2,
      child: ListView.builder(
        itemCount: KColorsList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: GestureDetector(
              onTap: () {
                currentEndex = index;
                BlocProvider.of<AddNoteCubit>(context).color =
                    KColorsList[index];
                setState(() {});
              },
              child: ColorItem(
                color: KColorsList[index],
                isActive: currentEndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            backgroundColor: Colors.white,
            radius: 30,
            child: CircleAvatar(
              radius: 26,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 27,
            backgroundColor: color,
          );
  }
}
