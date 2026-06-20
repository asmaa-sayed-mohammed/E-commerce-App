import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontsize;
  final Color color;
  final alignment;
  const CustomText({
    super.key,
    required this.text,
    this.fontsize = 16,
    this.color = Colors.black,
    this.alignment = Alignment.topLeft
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: Text(
        text,
        style: TextStyle(color: color, fontSize: fontsize),
      ),
    );
  }
}
