
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:my_ui_kit/app_refs.dart';
import 'package:my_ui_kit/models/widgets/combat_widget.dart';
import 'package:my_ui_kit/models/widgets/popular_widget.dart';

import '../models/widgets/view_all_widget.dart';


@RoutePage()
class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.background,
        centerTitle: false,
        automaticallyImplyLeading: false,
        actions: [
          //-----Левый текст-------------
          Align(
            alignment: AlignmentGeometry.bottomLeft,
            child: Padding(
                padding: EdgeInsetsGeometry.only(
                  top: 20,
                  left: 7,
                  right: 172
                ),
              child: SizedBox(
                width: 107,
                height: 66,
                child: Text(
                  'Discover Combats',
                  style: AppTypography.TittlePoppins.copyWith(color: AppColors.background, fontSize: 22,letterSpacing: 0.33)
                ),
              ),
            ),
          ),
          //--------------Правый текст-----------------------
          Align(
            alignment: AlignmentGeometry.bottomCenter,
            child: Padding(
                padding: EdgeInsetsGeometry.only(
                  right: 30,
                ),
              child: Text(
                'Filter',
                style:AppTypography.TittlePoppins.copyWith(color: AppColors.background, fontSize: 12,letterSpacing: -0.33)
              ),
            ),
          ),

        ],
        //----------------------поиск-------------------------
        bottom: PreferredSize(preferredSize: const Size.fromHeight(70),
          child: Padding(
              padding: const EdgeInsets.only(
                left: 30,
                right: 30,
                bottom: 10
              ),
              child: Container(
                width: 315,
                height: 41,
                decoration: BoxDecoration(
                    color: AppColors.background,
                    borderRadius: BorderRadius.circular(38)
                ),
                child: TextField(
                  controller: TextEditingController(),
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      hint: Padding(
                        padding: const EdgeInsets.only(bottom: 3,right: 2),
                        child: Text(
                          'Search Combat',
                          style: AppTypography.MainPoppins.copyWith(color: AppColors.textMuted)
                        ),
                      )
                  ),
                ),
              ),
            )
          )
        ),
        //______________________________________________________ТЕЛО________________________________
      body: SingleChildScrollView(
        child: Column(
          children: [
            //----------------------трендинг-----------------------------
            Padding(padding: EdgeInsetsGeometry.only(
                left: 30,
                top: 24,
                bottom: 20,
              right: 29.8
            ),
              child: ViewAllWidget(
                  func: (){},
                  text_heading: 'Trending this week'
              )
            ),
            //-----------------Блок 1-------------------------------------
            Padding(
              padding: EdgeInsetsGeometry.only(
                left: 30,
                right: 30,
                top: 23
              ),
              child: Combatwidget(
                  height: 64,
                  wight: 315,
                  NameOne: 'Scott Brown',
                  NameTwo: 'Stone Stella'
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
                right: 30,
                top: 10
              ),
              child: Combatwidget(
                  height: 64,
                  wight: 315,
                  NameOne: 'Scott Brown',
                  NameTwo: 'Stone Stella'
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 30,
                  right: 30,
                  top: 10
              ),
              child: Combatwidget(
                  height: 64,
                  wight: 315,
                  NameOne: 'Scott Brown',
                  NameTwo: 'Stone Stella'
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 30,
                  right: 30,
                  top: 10
              ),
              child: Combatwidget(
                  height: 64,
                  wight: 315,
                  NameOne: 'Scott Brown',
                  NameTwo: 'Stone Stella'
              ),
            ),
            //---------------------топ популярности-------------------------------
            Padding(
                padding: EdgeInsetsGeometry.only(
                    left: 30,
                    top: 41,
                    bottom: 20,
                  right: 30
                ),
                child: ViewAllWidget(
                    func: (){},
                    text_heading: 'Most Popular Players'
                ),
            ),//------------ДВА ВИДЖЕТА--------------------------
            Padding(
              padding: const EdgeInsets.only(
                left: 30
              ),
              child: Row(
                children: [
                  PopularWidget(
                      height: 64,
                      wight: 153,
                      Name: 'Scott Brown',
                      player_color: AppColors.Gold,
                      player_title: 'Gold player',
                      is_online: 'Online',
                      online_color: AppColors.Online),
                  Padding(
                    padding: const EdgeInsetsGeometry.only(left: 9),
                    child: PopularWidget(
                        height: 64,
                        wight:  153,
                        Name: 'Stone Stella',
                        player_color: AppColors.Grey,
                        player_title: 'Silver Player',
                        is_online: 'Offline',
                        online_color: AppColors.Gold),
                  )
                ],
              ),
            ),
            //-------------------Gjcktlybt ------------------------------
            Padding(
              padding: EdgeInsetsGeometry.only(
                left: 30,
                top: 20,
                right: 30
              ),
              child: ViewAllWidget(
                  func: (){},
                  text_heading: 'Latest Combats'
              ),
            ),
            //-----------Вторая часть---------------------------------
            Padding(
              padding: const EdgeInsets.only(
                  left: 30,
                  right: 30,
                  top: 23
              ),
              child: Combatwidget(
                  height: 64,
                  wight: 315,
                  NameOne: 'Scott Brown',
                  NameTwo: 'Stone Stella'
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 30,
                  right: 30,
                  top: 10
              ),
              child: Combatwidget(
                  height: 64,
                  wight: 315,
                  NameOne: 'Scott Brown',
                  NameTwo: 'Stone Stella'
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 30,
                  right: 30,
                  top: 10
              ),
              child: Combatwidget(
                  height: 64,
                  wight: 315,
                  NameOne: 'Scott Brown',
                  NameTwo: 'Stone Stella'
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 30,
                  right: 30,
                  top: 10
              ),
              child: Combatwidget(
                  height: 64,
                  wight: 315,
                  NameOne: 'Scott Brown',
                  NameTwo: 'Stone Stella'
              ),
            ),



        
          ],
        ),
      )
    );
  }
}
