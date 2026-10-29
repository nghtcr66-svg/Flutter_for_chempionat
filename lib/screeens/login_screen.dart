import 'package:android_chempionat/app_colors.dart';
import 'package:android_chempionat/models/OnBoardingModel.dart';
import 'package:android_chempionat/models/widgets/ConnectWithWidget.dart';
import 'package:android_chempionat/models/widgets/CustomFieldWidget.dart';
import 'package:android_chempionat/models/widgets/PasswordFieldwidget.dart';
import 'package:android_chempionat/page_route/page_route.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

@RoutePage()
class LoginScreen extends StatelessWidget{
  LoginScreen({super.key});

  final form_data = OnboardingModel(
    text_title: 'Welcome Back!',
    text_desc: 'Hi, Kindly login to continue battle',
    button_widget: ElevatedButton(
      onPressed: (){},
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
    picture_path: 'assets/5.png');








  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsetsGeometry.only(
                top: 28.0,
                left: 1.0
              ),
              child: Image.asset(form_data.picture_path),
            ),
            Padding(
              padding: EdgeInsetsGeometry.only(
                left: 16,
                top: 36.0
              ),
              child: Text(
                  form_data.text_title,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                  fontSize: 26,
                  fontWeight:  FontWeight.bold,
                  color: AppColors.primary,
                  height: 1.3
                )
              ),
            ),
            Padding(
              padding: EdgeInsetsGeometry.only(
                left: 16,
                top: 36.0
              ),
              child: Text(
                  form_data.text_desc,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight:  FontWeight.bold,
                  color: AppColors.textDark,
                  height: 1.3
                )
              ),
            ),
            Padding(
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: 48,
                vertical: 16
              ),
              child: CustomFieldWidget(
                text_hint: 'Email',
                 controller: TextEditingController()
              ),
            ),
            Padding(
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: 48,
                vertical: 16
              ),
              child: PasswordFieldwidget(
                controller: TextEditingController(),
                hintText: 'Password'
              )
            ),
            Padding(
              padding: EdgeInsetsGeometry.only(
                left: 185.0
              ),
              child: TextButton(
                onPressed: (){},
                child: Text(
                  'Forgot Password?',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: AppColors.textDark,
                    height: 1.3
                  ).copyWith(
                    decoration: TextDecoration.underline,
                  )
                ),
              )
            ),
            Padding(
              padding: EdgeInsetsGeometry.only(
                left: 16,
                right: 16,
                top: 16
              ),
              child: form_data.button_widget,
            ),
            Padding(
              padding: EdgeInsetsGeometry.only(
                left: 25,
                right: 25,
                top: 14
              ),
              child: Text(
                  'Connect With',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight:  FontWeight.bold,
                  color: AppColors.primary,
                  height: 1.3
                )
              ),
            ),
            Padding(
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: 130,
                vertical: 13
              ),
              child: Row(
                children: [
                  Connectwithwidget(
                    color: Colors.redAccent,
                    icon: Text(
                      'G+',
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                    onTap: (){}
                  ),
                  Padding(padding: EdgeInsetsGeometry.symmetric(
                      horizontal: 10
                    )
                  ),
                  Connectwithwidget(
                    color: Colors.blueAccent,
                    icon: Text(
                      'f',
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                    onTap: (){}
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsGeometry.only(
                left: 25,
                right: 25,
                top: 10
              ),
              child: Text(
                  'Dont Have an Account?',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: AppColors.textDark,
                  height: 1.3
                )
              ),
            ),
            Padding(
              padding: EdgeInsetsGeometry.only(
                left: 25,
                right: 25,
              ),
              child: TextButton(
                onPressed: (){context.router.push(CreateAccountRoute());},
                child: Text(
                  'Create Account',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight:  FontWeight.bold,
                    color: AppColors.primary,
                    height: 1.3
                  )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}