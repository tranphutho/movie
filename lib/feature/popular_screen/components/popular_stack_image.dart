import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PopularStackImgaeWidget extends StatelessWidget {
  final String nameImage;
  final String date;
  final String title;
  final GestureTapCallback onTap;

  const PopularStackImgaeWidget(
      {required this.nameImage,
      required this.date,
      required this.title,
      required this.onTap,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(this.nameImage);
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Stack(
            children: [
              SizedBox(
                height: 237,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Image.network(
                    nameImage,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                bottom: 11,
                right: 11,
                child: Text(
                  date,
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 8.46,
        ),
        SizedBox(
          width: 250,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
