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
      child: Padding(
        padding: EdgeInsetsGeometry.symmetric(
            horizontal: 10,
            vertical: 10
        ),
        child: Row(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
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
                    padding: EdgeInsetsGeometry.symmetric(horizontal: 5),
                    child: Align(
                      alignment: AlignmentGeometry.center,
                      child: Text(
                        NameOne,
                        style: AppTypography.MainHat
                      ),
                    ),
                ),
              ],
            ),
            //--------------------------VS-----------------------------------------
            Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 5),
              child: Text(
                'VS',
                style: AppTypography.TittlePoppins.copyWith(fontSize: 24, letterSpacing: 0.38),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
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
                  padding: EdgeInsetsGeometry.symmetric(horizontal: 5),
                  child: Align(
                    alignment: AlignmentGeometry.center,
                    child: Text(
                        NameTwo,
                        style: AppTypography.MainHat
                    ),
                  ),
                ),
              ],
            ),
            //---------------GAME----------------------------------
            Column(
              children: [
                Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 5, vertical: 10),
                  child: Text(
                    'Game  Name:',
                    style: AppTypography.RegularHat,
                  ),
                ),
                Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 5,vertical: 10),
                  child: Text(
                    'Halo 5',
                    style: AppTypography.TittlePoppins.copyWith(fontSize: 8),
                  ),
                ),
              ],
            ),
            //------------------------------STatus--------------------------------------
            Column(
              children: [
                Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 5, vertical: 10),
                  child: Text(
                    'Status:',
                    style: AppTypography.RegularHat,
                  ),
                ),
                Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 5,vertical: 10),
                  child: Text(
                    'Open',
                    style: AppTypography.TittlePoppins.copyWith(fontSize: 8),
                  ),
                ),
              ],
            ),
            //---------------------------------------------Winning price------------------------
            Column(
              children: [
                Padding(padding: EdgeInsetsGeometry.symmetric(horizontal:5, vertical: 10),
                  child: Text(
                    'Winning Price:',
                    style: AppTypography.RegularHat,
                  ),
                ),
                Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 5,vertical: 10),
                  child: Text(
                    '4,000',
                    style: AppTypography.TittlePoppins.copyWith(fontSize: 8),
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
