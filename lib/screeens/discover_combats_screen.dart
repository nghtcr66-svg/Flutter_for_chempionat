import 'package:android_chempionat/app_refs.dart';
import 'package:android_chempionat/models/widgets/combat_widget.dart';
import 'package:android_chempionat/models/widgets/popular_widget.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

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
                  right: 59
                ),
              child: Text(
                'Discover Combats',
                style: TextStyle(
                  fontFamily: 'RedHatText',
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
          //--------------Правый текст-----------------------
          Align(
            alignment: AlignmentGeometry.bottomCenter,
            child: Padding(
                padding: EdgeInsetsGeometry.only(
                  right: 10,
                  left: 60
                ),
              child: Text(
                'Tranding this week',
                style: TextStyle(
                  fontFamily: 'RedHatText',
                  fontSize: 16,
                  fontWeight: FontWeight.normal
                ),
              ),
            ),
          ),
          
        ],
        //----------------------поиск-------------------------
        bottom: PreferredSize(preferredSize: const Size.fromHeight(70),
          child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 30),
              child: Container(
                width: 190,
                height: 30,
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
                          style: TextStyle(
                              color: AppColors.primary,
                              fontFamily: 'RedHatText',
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                          ),
                        ),
                      )
                  ),
                ),
              ),
            )
          )
        ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsetsGeometry.symmetric(
              vertical: 23,
              horizontal: 10
            ),
              child: ViewAllWidget(
                  padding: 150 - 7,
                  func: (){},
                  text_heading: 'Trending this week'
              )
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 7),
              child: Combatwidget(
                  height: 90,
                  wight: 615 - 92,
                  NameOne: 'Scott Brown',
                  NameTwo: 'Stone Stella'
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 7),
              child: Combatwidget(
                  height: 90,
                  wight: 615 - 92,
                  NameOne: 'Scott Brown',
                  NameTwo: 'Stone Stella'
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 7),
              child: Combatwidget(
                  height: 90,
                  wight: 615 - 92,
                  NameOne: 'Scott Brown',
                  NameTwo: 'Stone Stella'
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 7),
              child: Combatwidget(
                  height: 90,
                  wight: 615 - 92,
                  NameOne: 'Scott Brown',
                  NameTwo: 'Stone Stella'
              ),
            ),
            Padding(
                padding: EdgeInsetsGeometry.symmetric(vertical: 20),
                child: ViewAllWidget(
                    padding: 150 - 22,
                    func: (){},
                    text_heading: 'Most Popular Players'
                ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: [
                  PopularWidget(
                      height: 100,
                      wight: 615 - 92-325+16,
                      Name: 'Scott Brown',
                      player_color: AppColors.Gold,
                      player_title: 'Gold player',
                      is_online: 'Online',
                      online_color: AppColors.Online),
                  Padding(
                    padding: const EdgeInsetsGeometry.only(left: 5),
                    child: PopularWidget(
                        height: 100,
                        wight: 615 - 92-325+16,
                        Name: 'Stone Stella',
                        player_color: AppColors.Grey,
                        player_title: 'Silver Player',
                        is_online: 'Offline',
                        online_color: AppColors.Gold),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsGeometry.symmetric(vertical: 20),
              child: ViewAllWidget(
                  padding: 190,
                  func: (){},
                  text_heading: 'Latest Combats'
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 7),
              child: Combatwidget(
                  height: 90,
                  wight: 615 - 92,
                  NameOne: 'Scott Brown',
                  NameTwo: 'Stone Stella'
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 7),
              child: Combatwidget(
                  height: 90,
                  wight: 615 - 92,
                  NameOne: 'Scott Brown',
                  NameTwo: 'Stone Stella'
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 7),
              child: Combatwidget(
                  height: 90,
                  wight: 615 - 92,
                  NameOne: 'Scott Brown',
                  NameTwo: 'Stone Stella'
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 7),
              child: Combatwidget(
                  height: 90,
                  wight: 615 - 92,
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
