import 'package:android_chempionat/app_colors.dart';
import 'package:android_chempionat/models/OnBoardingModel.dart';
import 'package:android_chempionat/page_route/page_route.dart';
import 'package:android_chempionat/screeens/create_account_screen.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


@RoutePage()
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
    //------------Экран 1--------------------
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
    //----------------Экран 2-----------------------
    OnboardingModel(
      text_title: 'Schedule Games With Friends ',
      text_desc: 'Easily create an upcoming event and get ready for battle. Yeah! real combat fella.',
      button_widget: TextButton(onPressed: (){_controller.nextPage(duration: const Duration(milliseconds: 300),curve: Curves.easeInOut);},
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
        )
      ),
      picture_path: 'assets/2.png'
    ),
    //---------------Экран 3-----------------------------
    OnboardingModel(
      text_title: 'Schedule Games With Friends ',
      text_desc: 'Easily create an upcoming event and get ready for battle. Yeah! real combat fella.',
      button_widget: ElevatedButton(onPressed: (){context.router.push(const CreateAccountRoute());},
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
                              top: 78.0
                            ),
                            child: Image.asset(item.picture_path),
                          ),
                          //---------------Текст розовый жирный-----------------------
                          Padding(padding: EdgeInsetsGeometry.symmetric(
                              vertical: 24.0,
                              horizontal: 68.0
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
                          Padding(padding: EdgeInsetsGeometry.symmetric(
                              vertical: 14.0,
                            //Горжусь этим собой теперь все текста усещаются в три строчки    
                              horizontal: 68.0
                            ),
                            child: Text(
                              item.text_desc,
                              textAlign: TextAlign.center,
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
              padding: EdgeInsetsGeometry.symmetric(
                vertical: 50.0,
                horizontal: 100.0
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

