import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CastImgaeWidget extends StatelessWidget {
  final String nameImage;

  final String name;
  final String cast;

  const CastImgaeWidget(
      {required this.nameImage,
      required this.name,
      required this.cast,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(this.nameImage);
    return Column(
      children: [
        GestureDetector(
          child: Stack(
            children: [
              SizedBox(
                height: 124,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Image.network(
                    nameImage,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        SizedBox(
          width: 124,
          child: Text(
            name,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        SizedBox(
          width: 124,
          child: Text(
            cast,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
          ),
        )
      ],
    );
  }
}
