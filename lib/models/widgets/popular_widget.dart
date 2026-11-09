import 'package:android_chempionat/models/widgets/avatar_widget.dart';
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
            left: 11,
            top: 11,
            bottom: 11
          ),
          child: AvatarWidget(wight: 37.27, height: 37.27, onTap: (){}, dec: Border.all( style: BorderStyle.none,) )
          ),
          //-------ПЕРВОЕ ПРАВИЛО - display=flex;---------
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 6.73,
                top: 12
              ),
                child: Column(
                  //-----нужно чтобы текст нах**й не полетел--------------------
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //---------------------ИМЯ--------------------------
                    Text(
                      Name,
                      style: AppTypography.TittleHat.copyWith(color: AppColors.textDark, fontSize: 6, letterSpacing: 0.3),
                    ),
                    //-------РЕЙТИНГ---------------
                    Padding(padding: EdgeInsetsGeometry.only(
                      top: 1
                    ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 6,
                            height: 6,
                              child: Image.asset('assets/rc.png'),
                          ),
                          Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 5),
                          child: Text(
                            player_title,
                            style: AppTypography.RegularHat.copyWith(color: player_color, fontSize: 9),
                          ),
                          )
                        ],
                      ),
                    ),
                    //-------ТИТЛ-----------------------------------------
                    Padding(
                      padding: const EdgeInsets.only(
                      ),
                      child: Row(
                          children: [
                            Text(
                              'Status',
                              style: AppTypography.RegularHat.copyWith(fontSize: 6),
                            ),
                            // Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 5),
                              Text(
                                is_online,
                                style: AppTypography.RegularHat.copyWith(color: online_color, fontSize: 6),
                              ),
                            // ),
                        ],
                      ),
                    ),
                    //----------------------Категроии--------------
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 1
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Category’s:',
                            style: AppTypography.TittleHat.copyWith(color: AppColors.textDark, fontSize: 6)
                          ),
                          Padding(padding: EdgeInsetsGeometry.only(
                            left: 4
                          ),
                            child: Text(
                              'Action, Soccer...',
                                style: AppTypography.TittleHat.copyWith(fontSize: 6)
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
          ),
        ],
      ),
    );
  }
}
