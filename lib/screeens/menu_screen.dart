import 'package:android_chempionat/app_refs.dart';
import 'package:android_chempionat/models/widgets/avatar_widget.dart';
import 'package:android_chempionat/models/widgets/menu_component_widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: EdgeInsetsGeometry.only(left: 30),
              child: InkWell(
                child: Icon(Icons.close,color: AppColors.primary,),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 60
                  ),
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
            MenuComponentWidget(
                icon: Image.asset('pi.png'),
                inner_padding: 24.1,
                text: 'My Profile'
            ),
            MenuComponentWidget(
                icon: Image.asset('pi.png'),
                inner_padding: 3.54,
                text: 'Schedule'
            ),
            MenuComponentWidget(
                icon: Image.asset('pi.png'),
                inner_padding: 4.53,
                text: 'Statistics'
            ),
            MenuComponentWidget(
                icon: Image.asset('pi.png'),
                inner_padding: 27.4,
                text: 'Discover Combat'
            ),
            MenuComponentWidget(
                icon: Image.asset('pi.png'),
                inner_padding: 24.4,
                text: 'Chat'
            ),
            MenuComponentWidget(
                icon: Image.asset('pi.png'),
                inner_padding: 22.97,
                text: 'Change App Skin'
            ),




          ],
        ),
      ),
    );
  }
}






















