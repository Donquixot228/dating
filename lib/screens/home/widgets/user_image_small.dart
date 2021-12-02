
import 'package:flutter/material.dart';

class UserImageSmall extends StatelessWidget {
  final double width;
  final double height;
  const UserImageSmall({
    Key? key,
    required this.imageUrl, this.width = 70, this.height = 70,
  }) : super(key: key);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 8,
        right: 5,
      ),
      height: height,
      width: width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            imageUrl,
          ),
        ),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}