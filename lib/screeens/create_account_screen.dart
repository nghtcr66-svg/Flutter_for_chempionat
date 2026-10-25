

//----------TODO Надо будет форму ввода просто в модель вывести так намного меньше кода будет ---

// Я ВСЕ ПЕРЕДЛАЮ ПОТОМ ЭТО ТОЛЬКО ДЛЯ "ЗАТЫЧКИ" ДЛЯ ПОКАЗА В ПОНЕДЕЛЬНИК ЧТОБЫ НЮАНЕМСЫ СПРОСИТЬ



import 'package:android_chempionat/app_colors.dart';
import 'package:android_chempionat/models/onboarding_model.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';



@RoutePage()
class CreateAccountScreen extends StatelessWidget{
  // CreateAccountScreen({super.key});

  // late final TextEditingController? controller;


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
              //-------------Имя Пользователя--------------------------------
              Padding(
                padding: EdgeInsetsGeometry.symmetric(
                  vertical: 24.0,
                  horizontal: 48.0
                ),
                // Погмогал Claude Code
                //-------------Форма--------------------------------
                child: TextField(
                  decoration: InputDecoration(
                  hintText: 'Full Name',            // серый текст-подсказка
                  enabledBorder: UnderlineInputBorder(   // линия, когда поле не в фокусе
                    borderSide: BorderSide(color: AppColors.primary),
                  ),
                  focusedBorder: UnderlineInputBorder(   // линия, когда нажал на поле
                  borderSide: BorderSide(color: AppColors.fieldBorder, width: 2),
                  ),
                  ),
                ),
              ),
              //-----------------------Полное имя------------------------------------
              Padding(
                padding: EdgeInsetsGeometry.symmetric(
                  vertical: 24.0,
                  horizontal: 48.0
                ),
                // Погмогал Claude Code
                //-------------Ник----------------------------
                child: TextField(
                  decoration: InputDecoration(
                  hintText: 'User Name',            // серый текст-подсказка
                  enabledBorder: UnderlineInputBorder(   // линия, когда поле не в фокусе
                    borderSide: BorderSide(color: AppColors.primary),
                  ),
                  focusedBorder: UnderlineInputBorder(   // линия, когда нажал на поле
                  borderSide: BorderSide(color: AppColors.fieldBorder, width: 2),
                  ),
                  ),
                ),
              ),
              //-------------------Номер телефона-------------------------------------------
              Padding(
                padding: EdgeInsetsGeometry.symmetric(
                  horizontal: 48.0
                ),
                child: Row(
                  //-------хз ьза что оно отвечает----------------
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //
                    const SizedBox(
                      width: 64,
                      child: TextField(
                        decoration: InputDecoration(
                          //--В душе не чаю как это реализовать но Вивальди афигенный------
                          hintText: '+234',   
                          enabledBorder: UnderlineInputBorder(   // линия, когда поле не в фокусе
                            borderSide: BorderSide(color: AppColors.primary),
                          ),
                          focusedBorder: UnderlineInputBorder(   // линия, когда нажал на поле
                            borderSide: BorderSide(color: AppColors.fieldBorder, width: 2),
                          ),
                        ),
                        //-----я афигею если это заработает-------
                        keyboardType: TextInputType.phone,
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Your Phone',   
                          enabledBorder: UnderlineInputBorder(   // линия, когда поле не в фокусе
                            borderSide: BorderSide(color: AppColors.primary),
                          ),
                          focusedBorder: UnderlineInputBorder(   // линия, когда нажал на поле
                            borderSide: BorderSide(color: AppColors.fieldBorder, width: 2),
                          ),
                        ),
                        //-----я афигею если это заработает-------
                        keyboardType: TextInputType.phone,
                      ),
                    ),
                  ],
                ),
              ),
              //-----------------------Email------------------------------------
              Padding(
                padding: EdgeInsetsGeometry.symmetric(
                  vertical: 24.0,
                  horizontal: 48.0
                ),
                child: TextField(
                  decoration: InputDecoration(
                  hintText: 'Email',            // серый текст-подсказка
                  enabledBorder: UnderlineInputBorder(   // линия, когда поле не в фокусе
                      borderSide: BorderSide(color: AppColors.primary),
                    ),
                  focusedBorder: UnderlineInputBorder(   // линия, когда нажал на поле
                    borderSide: BorderSide(color: AppColors.fieldBorder, width: 2),
                    ),
                  ),
                ),
              ),
              //----------Пароли------------------------------
              Padding(
                padding: EdgeInsetsGeometry.symmetric(
                  vertical: 24.0,
                  horizontal: 48.0
                ),
                child: TextField(
                  decoration: InputDecoration(
                  hintText: 'Password',            // серый текст-подсказка
                  enabledBorder: UnderlineInputBorder(   // линия, когда поле не в фокусе
                      borderSide: BorderSide(color: AppColors.primary),
                    ),
                  focusedBorder: UnderlineInputBorder(   // линия, когда нажал на поле
                    borderSide: BorderSide(color: AppColors.fieldBorder, width: 2),
                    ),
                  ),
                  
                ),
              ),
              Padding(
                padding: EdgeInsetsGeometry.symmetric(
                  vertical: 24.0,
                  horizontal: 48.0
                ),
                child: TextField(
                  decoration: InputDecoration(
                  hintText: 'confirm Password',            // серый текст-подсказка
                  enabledBorder: UnderlineInputBorder(   // линия, когда поле не в фокусе
                      borderSide: BorderSide(color: AppColors.primary),
                    ),
                  focusedBorder: UnderlineInputBorder(   // линия, когда нажал на поле
                    borderSide: BorderSide(color: AppColors.fieldBorder, width: 2),
                    ),
                  ),
                  
                ),
              ),
              Padding(padding: EdgeInsetsGeometry.only(
                top: 40.0,
                left: 3.0,
                right: 14.0,
              ),
                child: formdata.button_widget,
              ),
            ],
          ),
        ),
      ),
    );
  }
}