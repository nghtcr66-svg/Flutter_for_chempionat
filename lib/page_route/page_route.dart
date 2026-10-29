import 'package:android_chempionat/screeens/create_account_screen.dart';
import 'package:android_chempionat/screeens/onboarding_screen.dart';
import 'package:android_chempionat/screeens/login_screen.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';


part 'page_route.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: OnboardingRoute.page, initial: true),
    AutoRoute(page: CreateAccountRoute.page),
    AutoRoute(page: LoginRoute.page),
  ];
}