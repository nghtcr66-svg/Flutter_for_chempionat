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
    required this.NameOne,
    required this.NameTwo

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
            Flexible(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsetsGeometry.only(
                      left: 21,
                      top: 14,
                      bottom: 2.73
                    ),
                    child: Connectwithwidget(
                        width: 23,
                        height: 23,
                        color: AppColors.textDark,
                        icon: Image.asset('assets/checker.png'),
                        onTap: (){}
                    ),
                  ),
                  //----------------------------Текст имени 1-------------------------
                  Padding(
                      padding: EdgeInsetsGeometry.only(
                        bottom: 11,
                        left: 16
                      ),
                      child: Align(
                        alignment: AlignmentGeometry.center,
                        child: Text(
                          NameOne,
                          style: AppTypography.MainHat.copyWith(fontSize: 6)
                        ),
                      ),
                  ),
                ],
              ),
            ),
            //--------------------------VS-----------------------------------------
            Padding(padding: EdgeInsetsGeometry.only(
              top: 17,
              left: 16.73,
              bottom: 17
            ),
              child: Text(
                'VS',
                style: AppTypography.TittlePoppins.copyWith(fontSize: 24, letterSpacing: 0.38),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                    top: 14,
                    bottom: 2.73
                  ),
                  child: Connectwithwidget(
                      width: 23,
                      height: 23,
                      color: AppColors.textDark,
                      icon: Image.asset('assets/checker.png'),
                      onTap: (){}
                  ),
                ),
                //----------------------------Текст имени 2-------------------------
                Padding(
                  padding: EdgeInsetsGeometry.only(
                    bottom: 11,
                    left: 11
                  ),
                  child: Align(
                    alignment: AlignmentGeometry.center,
                    child: Text(
                        NameTwo,
                        style: AppTypography.MainHat.copyWith(fontSize: 6)
                    ),
                  ),
                ),
              ],
            ),
            //---------------GAME----------------------------------
            Column(
              children: [
                Padding(padding: EdgeInsetsGeometry.only(
                  left: 27,
                  bottom: 5,
                  top: 20
                ),
                  child: Text(
                    'Game  Name:',
                    style: AppTypography.RegularHat.copyWith(fontSize: 6),
                  ),
                ),
                Padding(padding: EdgeInsetsGeometry.only(
                  left: 37,
                  bottom: 21
                ),
                  child: Text(
                    'Halo 5',
                    style: AppTypography.TittlePoppins.copyWith(fontSize: 6),
                  ),
                ),
              ],
            ),
            //------------------------------STatus--------------------------------------
            Column(
              children: [
                Padding(padding: EdgeInsetsGeometry.only(
                  left: 18,
                  top: 20,


                ),
                  child: Text(
                    'Status:',
                    style: AppTypography.RegularHat.copyWith(fontSize: 6),
                  ),
                ),
                Padding(padding: EdgeInsetsGeometry.only(
                  left: 20,
                  top: 5,
                  bottom: 21
                ),
                  child: Text(
                    'Open',
                    style: AppTypography.TittlePoppins.copyWith(fontSize: 6),
                  ),
                ),
              ],
            ),
            //---------------------------------------------Winning price------------------------
            Column(
              children: [
                Padding(padding: EdgeInsetsGeometry.only(
                  top: 20,
                  left: 18,
                  right: 9
                ),
                  child: Text(
                    'Winning Price:',
                    style: AppTypography.RegularHat.copyWith(fontSize: 6),
                  ),
                ),
                Padding(padding: EdgeInsetsGeometry.only(
                  left: 30,
                  right: 18,
                  top: 5,
                  bottom: 21
                ),
                  child: Text(
                    '4,000',
                    style: AppTypography.TittlePoppins.copyWith(fontSize: 6),
                  ),
                ),
              ],
            ),

          ],
        ),
      );
  }
}
