import 'package:flutter/material.dart';

class OnboardingModel {
  final String picture_path;
  final String text_title;
  final String text_desc;
  final Widget button_widget;

  OnboardingModel ({
    required this.text_title,
    required this.text_desc,
    required this.button_widget,
    required this.picture_path,
  });
}