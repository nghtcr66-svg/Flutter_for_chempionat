import 'package:android_chempionat/models/widgets/connect_with_widget.dart';
import 'package:flutter/material.dart';

import '../../app_refs.dart';

class PopularWidget extends StatelessWidget {

  final double wight;
  final double height;
  final String Name;
  final Color player_color;
  final String player_title;
  final String is_online;
  final Color online_color;

  const PopularWidget({
    super.key,
    required this.height,
    required this.wight,
    required this.Name,
    required this.player_color,
    required this.player_title,
    required this.is_online,
    required this.online_color,
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
      child: Row(
        children: [
          Padding(padding: EdgeInsetsGeometry.only(
            left: 15,
            top: 10,
            bottom: 10
          ),
          child: Connectwithwidget(
              color: AppColors.textDark,
              icon: Image.asset('assets/checker.png'),
              onTap: (){},
              width: 38,
              height: 38
          ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              bottom: 10,
              right: 5
            ),
              child: Column(
                children: [
                  Text(
                    Name,
                    style: AppTypography.TittleHat.copyWith(color: AppColors.textDark, fontSize: 11),
                  ),
                  Padding(padding: EdgeInsetsGeometry.symmetric(vertical: 7),
                    child: Row(
                      children: [
                        Icon(Icons.military_tech, color: player_color,),
                        Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 5),
                        child: Text(
                          player_title,
                          style: AppTypography.RegularHat.copyWith(color: player_color, fontSize: 11),
                        ),
                        )
                      ],
                    ),
                  ),
                  Row(
                      children: [
                        Text(
                          'Status',
                          style: AppTypography.RegularHat.copyWith(fontSize: 11),
                        ),
                        Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 5),
                          child: Text(
                            is_online,
                            style: AppTypography.RegularHat.copyWith(color: online_color, fontSize: 11),
                          ),
                        ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Category’s:',
                        style: AppTypography.TittleHat.copyWith(color: AppColors.textDark, fontSize: 10)
                      ),
                      Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 5),
                        child: Text(
                          'Action, Soccer...',
                            style: AppTypography.TittleHat.copyWith(fontSize: 10)
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
        ],
      ),
    );
  }
}
