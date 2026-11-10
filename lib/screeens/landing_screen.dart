import 'package:android_chempionat/app_refs.dart';
import 'package:android_chempionat/models/widgets/avatar_widget.dart';
import 'package:android_chempionat/models/widgets/connect_with_widget.dart';
import 'package:android_chempionat/models/widgets/landing_container_widget.dart';
import 'package:android_chempionat/page_route/page_route.dart';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


@RoutePage()
class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  final _widht = 315.0;
  final _height = 169.0;
  // final _img_widht = 130.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        foregroundColor: AppColors.primary,
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: SizedBox(
            width: 17.5,
            height: 10,
            child: IconButton(
                onPressed: (){context.router.push((MenuRoute()));},
                icon: Image.asset("h.png",fit: BoxFit.cover)
            ),
          ),
        ),
        actions: [
          Padding(padding: EdgeInsetsGeometry.only(right: 10),
          child: AvatarWidget(
              dec: Border.all(
                    color: AppColors.primary,
                    width: 2,
                    ),
              wight: 24,
              height: 24,
              onTap: (){context.router.push((DiscoverRoute()));}
            )
          ),
          Padding(
              padding: EdgeInsetsGeometry.only(right: 27),
              child: Text('Stone Stellar',
                style: AppTypography.MainPoppins.copyWith(fontSize: 10)
              )
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.zero,
            child: Center(
              child: Column(
                children: [
                  //-------------Первая-------------------------------
                  Padding(padding: EdgeInsetsGeometry.only(top: 24, bottom: 5),
                    child: LandingcontainerWidget(
                        height: _height,
                        wight: _widht,
                        text_title: 'Schedule',
                        text_desc: 'Easily schedule event/game then find like minded players for battle. You up for it?',
                        image_path: 'assets/6.png',
                        func: (){},
                        header_height: 18,
                        desc_wight: 165,
                        arrow_padding: 33,
                    ),
                  ),
                  //------------------Вторая---------------------------------------
                  Padding(padding: EdgeInsetsGeometry.symmetric(vertical: 5),
                    child: LandingcontainerWidget(
                      height: _height,
                      wight: _widht,
                      text_title: 'Discover  Combats',
                      text_desc: 'Find out what’s new and compete among players with new challenges and earn cash with game points ',
                      image_path: 'assets/7.png',
                      func: (){},
                      header_height: 18,
                      desc_wight: 175,
                      arrow_padding: 48,
                    ),
                  ),
                  //-----------------------Третья-------------------------------------------
                  Padding(padding: EdgeInsetsGeometry.symmetric(vertical: 5),
                    child: LandingcontainerWidget(
                      height: _height,
                      wight: _widht,
                      text_title: 'Statistics',
                      text_desc: 'All data from previous an upcoming games can be found here ',
                      image_path: 'assets/8.png',
                      func: (){},
                      header_height: 18,
                      desc_wight: 165,
                      arrow_padding: 18,
                    ),
                  ),
                  //----------------------Чертвертая-------------------------------------------
                  Padding(padding: EdgeInsetsGeometry.symmetric(vertical: 5),
                    child: LandingcontainerWidget(
                      height: _height,
                      wight: _widht,
                      text_title: 'Message Players',
                      text_desc: 'Found the profile of a player that interests you? Start conversation',
                      image_path: 'assets/9.png',
                      func: (){},
                      header_height: 18,
                      desc_wight: 165,
                      arrow_padding: 33,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
    );
  }
}
