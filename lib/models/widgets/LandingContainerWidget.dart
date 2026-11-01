import 'package:android_chempionat/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class LandingcontainerWidget extends StatelessWidget {

  final double wight;
  final double height;
  final String text_title;
  final String text_desc;
  final String image_path;
  final double img_wight;
  final VoidCallback func;

  const LandingcontainerWidget({
    super.key,
    required this.height,
    required this.wight,
    required this.text_title,
    required this.text_desc,
    required this.image_path,
    required this.func,
    required this.img_wight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: wight,
      height: height,
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(12.0)
      ),
      //============================ДВа виджета пополам=======================================
      child: Row(
        children: [
          //----------------------------Текста и кнопка----------------------------
          Padding(
              padding: EdgeInsetsGeometry.only(
                left: 5.0
              ),
              child: SizedBox(
                width: wight/2.2,
                height: height,
              // -------------------------Заголовок и остальное в контейнере для ограничения --------------------------
              child: Column(
                children: [
                  Padding(
                      padding: EdgeInsetsGeometry.only(
                        top: 23.0,
                        right: 200
                      ),
                      child: Text(
                        text_title,
                        style: GoogleFonts.poppins(
                          color: AppColors.background,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          height: 1.3
                        ),
                      ),
                  ),
                  //-------------подзаголовок-----------------------------
                  Padding(padding: EdgeInsetsGeometry.only(
                      top: 10.0,
                      left: 3,
                  ),
                    child: Text(
                      text_desc,
                      style: GoogleFonts.poppins(
                      color: AppColors.background,
                        fontSize: 14,
                        height: 1.3
                      ),
                    ),
                  ),
                  //-------------------------------Кнопка-----------------------------------
                  Padding(padding: EdgeInsetsGeometry.only(
                    right: 270
                  ),
                  child: IconButton(
                     onPressed: func,
                     icon: Icon(Icons.arrow_forward, color: AppColors.background,)
                  )
                  ),
                ],
              ),
            ),
          ),
          //-----------------------------Картинка--------------------------------------------
          Padding(padding: EdgeInsetsGeometry.only(right: 10.0),
            child: Image.asset(image_path, height: height, width: img_wight,fit: BoxFit.fill),
          )
        ],
      ),
    );
  }
}
