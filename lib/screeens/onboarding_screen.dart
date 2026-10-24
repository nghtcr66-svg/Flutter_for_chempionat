import 'package:android_chempionat/app_colors.dart';
import 'package:android_chempionat/models/onboarding_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget{
  const OnboardingScreen ({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  //----------------PageController для перехода между  одним  Onboarding------------
  final PageController _controller = PageController();


  int _currentOnBoardingPage = 0;

  //---TODO нужен для перехода к экрану логина ---------
  // void _goToLogin(){
  // }

  
  //--------Список МОделей в которых хранятся текст и все такое--------------------
  late final List<OnboardingModel>  _pages = [
    OnboardingModel(
      text_title: 'Get Paid! Playing Video Game',
      text_desc: 'Earn points and real cash when you win a battle with no delay in cashing out',
      button_widget: TextButton(
          onPressed: (){_controller.nextPage(duration: const Duration(milliseconds: 300),curve: Curves.easeInOut);},
           child: Text(
              'skip',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: AppColors.primary,
                height: 1.3
              ).copyWith(
                decoration: TextDecoration.underline,
                color: AppColors.primary
                )
              ),
            ),
      picture_path: 'assets/1.png'
    ),
    OnboardingModel(
      text_title: 'Schedule Games With Friends ',
      text_desc: 'Easily create an upcoming event and get ready for battle. Yeah! real combat fella.',
      button_widget: TextButton(onPressed: (){}, child: Text('zapolnitel')),
      picture_path: 'assets/3.png'
    ),
  ];

  //----------Билд и структура самого OnBoarding сюда просто подставляются пересенные---------
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          children: [
    //-----Нагло украдено у Ярослава хз что оно делает но должно нужное подставлять----
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: _pages.length,
                onPageChanged: (index) {
                  setState(() => _currentOnBoardingPage = index);
                },
                itemBuilder: (context, index) {
                  final item = _pages[index];
                  //----------------Общий отступ от краев------------------------------
                  return Padding(
                    padding: EdgeInsetsGeometry.only(
                      left: 16.0,
                      bottom: 16.0
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          //------------Картинка-----------------------
                          Padding(padding: EdgeInsetsGeometry.only(
                              left: 24.0,
                              top: 150.0
                            ),
                            child: Image.asset(item.picture_path),
                          ),
                          //---------------Текст розовый жирный-----------------------
                          Padding(padding: EdgeInsetsGeometry.only(
                              left: 24.0,
                              right: 24.0,
                              top: 40.0
                            ),
                            child: Text(
                              item.text_title,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                fontSize: 26,
                                fontWeight:  FontWeight.bold,
                                color: AppColors.primary,
                                height: 1.3
                              )
                            ),
                          ),
                          //------Текст черный ниже--------------------------
                          Padding(padding: EdgeInsetsGeometry.only(
                              top: 40.0,
                              left: 24.0,
                              right: 24.0,
                            ),
                            child: Text(
                              item.text_desc,
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: AppColors.textDark,
                                height: 1.3
                              ),
                            ),
                          ),
                          //------------------Виджет кнопки перехода-------------
                          Padding(padding: EdgeInsetsGeometry.only(
                              top: 40.0,
                              left: 3.0,
                              right: 14.0,
                            ),
                            child: item.button_widget,
                          ),
                        ],
                      ),
                    ),
                  );
                }  
              ),
            ),
            //--------------Сделал точки вне билдера так как они сами меняются ----------
            Padding(
              padding: EdgeInsetsGeometry.only(
                top: 40.0,
                left: 10.0, 
                bottom: 50.0
              ),
              child: SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: ScrollingDotsEffect(
                activeDotColor: AppColors.primary,
                dotColor: AppColors.textMuted
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

