import 'package:android_chempionat/app_refs.dart';
import 'package:android_chempionat/models/onboarding_model.dart';
import 'package:android_chempionat/models/widgets/custom_field_widget.dart';
import 'package:android_chempionat/models/widgets/password_field_widget.dart';
import 'package:android_chempionat/models/widgets/phone_field_widget.dart';
import 'package:android_chempionat/page_route/page_route.dart';
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
    button_widget: Container(
      width: 224,
      height: 58,
      child: ElevatedButton(onPressed: (){},
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
                style: AppTypography.NormalPoppins.copyWith(color: AppColors.background)
            )
          ),
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
                  left: (375-324-10),
                  top: 78.0
                ),
                child: Image.asset(formdata.picture_path),
              ),
              //-------------------Текст розовый-------------------------------------
              Padding(
                padding: EdgeInsetsGeometry.only(
                  top: 40.0,
                  right: 375-204-((375-174)/2),
                ),
                child: Text(
                  formdata.text_title,
                  textAlign: TextAlign.center,
                    style: AppTypography.TittlePoppins
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
                    style: AppTypography.MainPoppins
                ),
              ),
              //------------Поле Имя---------------------------------------
              Padding(
                padding: EdgeInsetsGeometry.symmetric(
                  horizontal: (375-263)/2,
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
                  horizontal: (375-263)/2,
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
                  horizontal: (375-263)/2,
                  vertical: 24
                ),
                child: PhoneFieldModel(
                  phoneRegWight: 35,
                  phoneController:TextEditingController() ,
                  regController: TextEditingController(),
                  phoneWight: 210,
                )
              ),
              //-------Пароль----------------------------------------------
              Padding(
                padding: EdgeInsetsGeometry.symmetric(
                  horizontal: (375-263)/2,
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
                  horizontal: (375-263)/2,
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
                    style: AppTypography.MainPoppins
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
                  onPressed: (){context.router.push(LoginRoute());},
                  child: Text(
                    'Login',
                    textAlign: TextAlign.center,
                    style: AppTypography.MainPoppins.copyWith(color: AppColors.primary),
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