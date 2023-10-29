import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 20,
        bottom: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19),
        color: Color(0xffFFCC80),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ListTile(
            title: Text(
              'Flutter Tips',
              style: TextStyle(fontSize: 30, color: Colors.black),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                'This is me mohanad mohamed alsayed taha',
                style: TextStyle(
                    fontSize: 19, color: Colors.black.withOpacity(.6)),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.delete,
                size: 35,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15, top: 15),
            child: Text(
              'May 28,2023',
              style: TextStyle(
                color: Colors.black.withOpacity(.6),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
