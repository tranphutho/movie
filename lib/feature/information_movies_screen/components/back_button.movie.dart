import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30, top: 73, right: 26),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          iconButton(
              icon: Icons.arrow_back_ios,
              onPressed: () {
                Navigator.pop(context);
              }),
          iconButton(
            icon: Icons.favorite_outline_outlined,
          )
        ],
      ),
    );
  }
}

Widget iconButton({required IconData icon, VoidCallback? onPressed}) {
  return IconButton(
      onPressed: onPressed, icon: Icon(icon, color: Colors.black));
}
