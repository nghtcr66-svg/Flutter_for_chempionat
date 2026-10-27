import 'package:android_chempionat/app_colors.dart';
import 'package:android_chempionat/models/OnBoardingModel.dart';
import 'package:android_chempionat/models/widgets/CustomFieldWidget.dart';
import 'package:android_chempionat/models/widgets/PasswordFieldwidget.dart';
import 'package:android_chempionat/models/widgets/PhoneFieldwidget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';



@RoutePage()
class CreateAccountScreen extends StatelessWidget{
  CreateAccountScreen({super.key});

  late final TextEditingController? controller;

  //-------------Данные для подставлеиня-------------------------------------
  final formdata = OnboardingModel(
    text_title: 'Create Account',
    text_desc: 'Hi, kindly fill in the form to proceed combat',
    button_widget: ElevatedButton(onPressed: (){},
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.background,
          //
          shape: const StadiumBorder(),
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 16.0
          ),
          elevation: 0,
        ),
        child: Text(
          'Let’s Combat!',
              style: GoogleFonts.poppins( // Применяем шрифт Poppins (или любой другой из Google Fonts)
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.white, 
                height: 1.3,
            ),
          )
        ),
    picture_path: 'assets/4.png'
  );





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //------Для скролла странички--------
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              //---------------------Картинка--------------------------------
              Padding(
                padding: EdgeInsetsGeometry.only(
                  left: 24.0,
                  top: 78.0
                ),
                child: Image.asset(formdata.picture_path),
              ),
              //-------------------Текст розовый-------------------------------------
              Padding(
                padding: EdgeInsetsGeometry.only(
                  top: 40.0,
                  left: 24.0,
                ),
                child: Text(
                  formdata.text_title,
                  textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                    fontSize: 26,
                    fontWeight:  FontWeight.bold,
                    color: AppColors.primary,
                    height: 1.3
                  )
                ),
              ),
              //-----------Текст верхний черный---------------------------------
              Padding(
                padding: EdgeInsetsGeometry.only(
                  top: 40.0,
                  left: 24.0,
                ),
                child: Text(
                  formdata.text_desc,
                  textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight:  FontWeight.bold,
                    color: AppColors.textDark,
                    height: 1.3
                  )
                ),
              ),
              //------------Поле Имя---------------------------------------
              Padding(
                padding: EdgeInsetsGeometry.symmetric(
                  horizontal: 56,
                  vertical: 24
                ),
                child: CustomFieldWidget(
                  text_hint: 'Full Name',
                  controller: TextEditingController()
                ),
              ),
              //-----------Поле юзернейм-------------------------------------------
              Padding(
                padding: EdgeInsetsGeometry.symmetric(
                  horizontal: 56,
                  vertical: 24
                ),
                child: CustomFieldWidget(
                  text_hint: 'User Name',
                  controller: TextEditingController()
                ),
              ),
              //--------Номер телефона---------------------------------------------
              Padding(
                padding: EdgeInsetsGeometry.symmetric(
                  horizontal: 56,
                  vertical: 24
                ),
                child: PhoneFieldModel(
                  phoneController:TextEditingController() ,
                  regController: TextEditingController()
                )
              ),
              //-------Пароль----------------------------------------------
              Padding(
                padding: EdgeInsetsGeometry.symmetric(
                  horizontal: 56,
                  vertical: 24
                ),
                child: PasswordFieldwidget(
                  controller: TextEditingController(),
                  hintText: 'Password'
                )
              ),
              //-------Подтверждение пароля---------------------------------------------------
              Padding(
                padding: EdgeInsetsGeometry.symmetric(
                  horizontal: 56,
                  vertical: 24
                ),
                child: PasswordFieldwidget(
                  controller: TextEditingController(),
                  hintText: 'Confirm Password'
                )
              ),
              //--------------------Кнопка-----------------------------------
              Padding(
                padding: EdgeInsetsGeometry.only(
                  top: 40.0,
                  left: 3.0,
                  right: 14.0,
                ),
                child: formdata.button_widget,
              ),
              //-------------------Черный текст внизу----------------------------------
              Padding(
                padding: EdgeInsetsGeometry.only(
                  top: 189.0,
                  left: 16.0,
                  right: 16.0,
                ),
                child: Text(
                  'Already have an account?',
                  textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight:  FontWeight.bold,
                    color: AppColors.textDark,
                    height: 1.3
                  )
                ),
              ),
              //----------Текст внизу с подчеркиванием----------------------------
              Padding(
                padding: EdgeInsetsGeometry.only(
                  bottom: 36.0,
                  top: 4.0,
                  left: 16.0,
                  right: 16.0,
                ),
                child: TextButton(
                  onPressed: (){},
                  child: Text(
                    'Login',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: AppColors.primary,
                      height: 1.3
                    ).copyWith(
                      decoration: TextDecoration.underline,
                      color: AppColors.primary
                    )
                  )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}