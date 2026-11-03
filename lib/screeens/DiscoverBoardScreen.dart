import 'package:android_chempionat/app_refs.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';


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
            alignment: AlignmentGeometry.bottomCenter,
            child: Padding(
                padding: EdgeInsetsGeometry.only(
                  top: 20,
                  left: 7
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
          //-------------------------------------
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
      body: Column(
        children: [
          Padding(padding: EdgeInsetsGeometry.symmetric(
            vertical: 23,
            horizontal: 10
          ),
            child: Row(
              children: [
                Padding(padding: EdgeInsetsGeometry.only(
                  left: 5
                ), child: Text(
                  'Trending this week',
                  style: TextStyle(
                    color: AppColors.primary,
                    fontFamily: 'RedHatText',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    height: 28/20
                  ),
                ),
                ),
                Padding(padding: EdgeInsetsGeometry.only(
                  left: 90,
                ),
                  child: Text(
                    'View All',
                    style: TextStyle(
                        color: AppColors.textDark,
                        fontFamily: 'RedHatText',
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        height: 12/20
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsetsGeometry.only(right: 5),
                    child: IconButton(onPressed: (){}, icon: Icon(
                        Icons.double_arrow,
                    ), color: AppColors.primary,
                    ),
                )
              ],
            ),
          ),

        ],
      )
    );
  }
}
