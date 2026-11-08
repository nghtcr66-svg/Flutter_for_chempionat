import 'package:android_chempionat/app_refs.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class LandingcontainerWidget extends StatelessWidget {

  final double wight;
  final double height;
  final String text_title;
  final String text_desc;
  final String image_path;
  // final double img_wight;
  final VoidCallback func;
  final double header_wight;
  final double header_height;
  final double desc_wight;
  final double desc_height;



  const LandingcontainerWidget({
    super.key,
    required this.height,
    required this.wight,
    required this.text_title,
    required this.text_desc,
    required this.image_path,
    required this.func,
    // required this.img_wight,
    required this.header_wight,
    required this.header_height,
    required this.desc_wight,
    required this.desc_height
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
        child: Stack(
          children: [
            //-----------------------------Картинка--------------------------------------------
            Align(
              alignment: AlignmentGeometry.centerRight,
              child: Padding(padding: EdgeInsetsGeometry.only(right: 10.0),
                child: Image.asset(
                    image_path,
                    // height: height,
                    // width: img_wight,
                    fit: BoxFit.fill
                ),
              ),
            ),
            //----------------------------Текста и кнопка----------------------------
            Padding(
                padding: EdgeInsetsGeometry.only(
                  left: 5.0
                ),
                // child: SizedBox(
                //   width: wight/3,
                //   height: height,
                // -------------------------Заголовок и остальное в контейнере для ограничения --------------------------
                child: Column(
                  children: [
                    Padding(
                        padding: EdgeInsetsGeometry.only(
                          top: 23.0,
                          right: wight-header_wight-54
                        ),
                        child: SizedBox(
                          width: header_wight,
                          height: header_height,
                          child: Text(
                            text_title,
                            style: AppTypography.MainPoppins.copyWith(color: AppColors.background, fontWeight: FontWeight.bold)
                          ),
                        ),
                    ),
                    //-------------подзаголовок-----------------------------
                    SingleChildScrollView(
                      child: Padding(padding: EdgeInsetsGeometry.only(
                          top: 10.0,
                          right: wight-desc_wight-54,
                      ),
                        child: SizedBox(
                          width: desc_wight,
                          height: desc_height,
                          child: Text(
                            text_desc,
                            style: AppTypography.NormalPoppins.copyWith(color: AppColors.background)
                          ),
                        ),
                      ),
                    ),
                    //-------------------------------Кнопка-----------------------------------
                    Padding(padding: EdgeInsetsGeometry.only(
                      right: wight-54-14,
                      top: 14
                    ),
                    child: IconButton(
                       onPressed: func,
                       icon: Icon(Icons.arrow_forward, color: AppColors.background,)
                    )
                    ),
                  ],
                ),
              ),
            // ),
        
          ],
        ),
    );
  }
}
