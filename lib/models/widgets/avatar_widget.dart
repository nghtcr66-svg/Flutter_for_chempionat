import 'package:android_chempionat/app_refs.dart';
import 'package:flutter/material.dart';



class AvatarWidget extends StatelessWidget {


  final double wight;
  final double height;
  final VoidCallback onTap;
  final BoxBorder dec;


  const AvatarWidget({
    super.key,
    required this.wight,
    required this.height,
    required this.onTap,
    required this.dec,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
            width: wight,
            height: height,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: dec,
              image: const DecorationImage(
                image: AssetImage('assets/checker.png'),
                fit: BoxFit.cover, // Растягивает картинку, чтобы она полностью заполнила круг
              ),
            ),
      ),
    );
  }
}