import 'package:android_chempionat/app_refs.dart';
import 'package:android_chempionat/models/widgets/connect_with_widget.dart';
import 'package:flutter/material.dart';

class Combatwidget extends StatelessWidget {


  final double wight;
  final double height;
  final String NameOne;
  final String NameTwo;



  const Combatwidget({
    super.key,
    required this.height,
    required this.wight,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: wight,
      height: height,
      decoration: BoxDecoration(
        border: BoxBorder.all(color: AppColors.primary),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Padding(
        padding: EdgeInsetsGeometry.symmetric(
            horizontal: 10,
            vertical: 10
        ),
        child: Row(
          children: [
            Column(
              children: [
                Connectwithwidget(color: AppColors.textDark, icon: Icon(Icons.twenty_two_mp), onTap: (){}),
                Text(
                  ''
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
