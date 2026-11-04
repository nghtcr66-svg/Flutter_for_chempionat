import 'package:flutter/material.dart';

class Connectwithwidget extends StatelessWidget{
  final Color color;
  //в качестве иконки будем принимать текст
  final Widget icon;
  final VoidCallback onTap;
  final double width;
  final double height;

  Connectwithwidget({
    super.key,
    required this.color,
    required this.icon,
    required this.onTap,
    required this.width,
    required this.height
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      //делаем его круглым
      customBorder: const CircleBorder(),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle
        ),
        alignment: Alignment.center,
        child: icon,
      ),
    );
  }
}