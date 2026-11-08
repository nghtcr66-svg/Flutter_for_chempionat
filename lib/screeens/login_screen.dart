import 'package:android_chempionat/app_refs.dart';
import 'package:android_chempionat/models/onboarding_model.dart';
import 'package:android_chempionat/models/widgets/connect_with_widget.dart';
import 'package:android_chempionat/models/widgets/custom_field_widget.dart';
import 'package:android_chempionat/models/widgets/password_field_widget.dart';
import 'package:android_chempionat/page_route/page_route.dart';
import 'package:android_chempionat/screeens/landing_screen.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

@RoutePage()
class LoginScreen extends StatelessWidget{
  LoginScreen({super.key});









  @override
  Widget build(BuildContext context) {


    final form_data = OnboardingModel(
        text_title: 'Welcome Back!',
        text_desc: 'Hi, Kindly login to continue battle',
        button_widget: Container(
          width: 224,
          height: 58,
          child: ElevatedButton(
              onPressed: (){context.router.push(LandingRoute());},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                foregroundColor: AppColors.background,
                //
                shape: const StadiumBorder(),
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 10.0
                ),
                elevation: 0,
              ),
              child: Text(
                'Let’s Combat!',
                style: AppTypography.MainPoppins.copyWith(color: AppColors.background, fontWeight: FontWeight.bold)
              )
          ),
        ),
        picture_path: 'assets/5.png');



    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsetsGeometry.only(
                  top: 28.0,
                  right: 375 - 323
                ),
                child: Image.asset(form_data.picture_path),
              ),
              Padding(
                padding: EdgeInsetsGeometry.only(
                  right: 375-224-((375-263)/2)-11,
                  top: 36.0,
                ),
                child: Text(
                    form_data.text_title,
                    textAlign: TextAlign.center,
                    style: AppTypography.TittlePoppins.copyWith(fontSize: 22)
                ),
              ),
              Padding(
                padding: EdgeInsetsGeometry.only(
                  left: (375-263)/10,
                  top: 36.0,
                ),
                child: Text(
                    form_data.text_desc,
                    textAlign: TextAlign.center,
                    style: AppTypography.MainPoppins
                ),
              ),
              Padding(
                padding: EdgeInsetsGeometry.symmetric(
                  horizontal: (375-263)/2,
                  vertical: 16
                ),
                child: CustomFieldWidget(
                  text_hint: 'Email',
                   controller: TextEditingController()
                ),
              ),
              Padding(
                padding: EdgeInsetsGeometry.symmetric(
                  horizontal: (375-263)/2,
                  vertical: 16
                ),
                child: PasswordFieldwidget(
                  controller: TextEditingController(),
                  hintText: 'Password'
                )
              ),
              Padding(
                padding: EdgeInsetsGeometry.only(
                  left: 375-180-63
                ),
                child: InkWell(
                  onTap: (){},
                  child: Text(
                    'Forgot Password?',
                    style: AppTypography.NormalPoppins
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
                    style: AppTypography.TittlePoppins
                ),
              ),
              Padding(
                padding: EdgeInsetsGeometry.symmetric(
                  horizontal: 140,
                  vertical: 13
                ),
                child: Center(
                  child: Row(
                    children: [
                      Connectwithwidget(
                        width: 35,
                        height: 34,
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
                        width: 35,
                        height: 34,
                        color: Color(0xFF2672CB),
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
                    style: AppTypography.MainPoppins
                ),
              ),
              Padding(
                padding: EdgeInsetsGeometry.only(
                  left: 25,
                  right: 25,
                  top: 17,
                  bottom: 20),
                child: InkWell(
                  onTap: (){context.router.push(CreateAccountRoute());},
                  child: Text(
                    'Create Account',
                    textAlign: TextAlign.center,
                    style: AppTypography.MainPoppins.copyWith(
                        color: AppColors.primary,
                        fontWeight: FontWeight.bold,
                        fontSize: 12)
                  ),
                ),
              )
            ],
          ),
        ),
      );
  }
}