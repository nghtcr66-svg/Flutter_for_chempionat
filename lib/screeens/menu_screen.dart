
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_ui_kit/app_refs.dart';
import 'package:my_ui_kit/models/widgets/avatar_widget.dart';
import 'package:my_ui_kit/models/widgets/menu_component_widget.dart';



@RoutePage()
class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //----------------AppBar-------------------
        appBar: AppBar(
          actions: [
            Padding(
              padding: EdgeInsetsGeometry.only(left: 30),
              child: InkWell(
                child: Image.asset('sm.png')
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
        child: Column(
          //Выравнивает по левому краю элементы
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //---------------Профиль-----------------------
            SizedBox(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 60),
                    child: AvatarWidget(
                        wight: 56,
                        height: 56,
                        onTap: (){},
                        dec: Border.all(
                          color: AppColors.primary,
                          width: 2,)
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        'Stone Stellar',style: AppTypography.TittlePoppins.copyWith(letterSpacing: -0.3),

                      ),
                      Row(
                        children: [
                          Image.asset('assets/rc.png'),
                          Padding(padding: EdgeInsetsGeometry.only(left: 5),
                          child: Text(
                            'Gold Player',
                            style: AppTypography.MainPoppins.copyWith(
                              color: AppColors.Gold,
                              letterSpacing: -0.3
                            ),
                          ),
                          )
                        ],
                      ),


                    ],
                  )
                ],
              ),
            ),
            //---------------Элементы меню----------------------
            MenuComponentWidget(
                icon: Image.asset('pi.png'),
                inner_padding: 24.1,
                text: 'My Profile'
            ),
            MenuComponentWidget(
                icon: Image.asset('si.png'),
                inner_padding: 24.84,
                text: 'Schedule'
            ),
            MenuComponentWidget(
                icon: SizedBox(width: 16.33, height: 14.04, child: Image.asset('sic.png')),
                inner_padding: 23.67,
                text: 'Statistics'
            ),
            MenuComponentWidget(
                icon: Image.asset('lp.png'),
                inner_padding: 27.4,
                text: 'Discover Combat'
            ),
            MenuComponentWidget(
                icon: Image.asset('ch.png'),
                inner_padding: 23.84,
                text: 'Chat'
            ),
            MenuComponentWidget(
                icon: Image.asset('chs.png'),
                inner_padding: 24.4,
                text: 'Change language'
            ),
            MenuComponentWidget(
                icon: Image.asset('chli.png'),
                inner_padding: 22.97,
                text: 'Change App Skin'
            ),
            //-------------LogOut----------------
            Padding(
                padding: const EdgeInsets.only(top: 101.25,bottom: 46.35),
                child: Row(
                  //выравнивает текст по центру
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width:18,
                        height: 18,
                        child: Image.asset("li.png")
                    ),
                    Padding(padding: EdgeInsetsGeometry.only(left: 18)),
                    Text(
                      "Logout"
                    )
                  ],
                ),
              ),



          ],
        ),
      ),
    );
  }
}






















