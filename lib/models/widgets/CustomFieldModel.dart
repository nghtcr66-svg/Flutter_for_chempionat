import 'package:android_chempionat/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//------------------Делаем кастомный класс родитель для заполнения чтобы просто потом вставлять данные--------------------
class CustomFieldModel extends StatelessWidget{
  //Принимаем прям усе что только можно прикол в том что доп функции всегда есть но по-умолчанию не юзаем
  final String text_hint;
  final TextEditingController controller;
  final String? errorMess;
  //нужны для phonefield
  final int? maxLenght;
  final List<TextInputFormatter>? inputFormater;
  //нужны для passwordfield
  final TextInputType inputType;
  final Widget? suffixIcon;
  final bool obscureText;



  CustomFieldModel({
    super.key,
    required this.text_hint,
    this.inputType = TextInputType.text,
    required this.controller,
    this.obscureText = false,
    this.suffixIcon,
    this.errorMess,
    this.inputFormater,
    this.maxLenght,
  });

  //-----------Вернет уже гготовый виджет со всем стилем его функционал можно расширить---------------------
  Widget build(BuildContext context){
    return TextField(
      decoration: InputDecoration(
        hintText: text_hint,
        errorText: errorMess,
        suffixIcon: suffixIcon,
        counterText: '', //спрятали счетчик я хз почему он появляется мне так Claude code сказал
        enabledBorder: UnderlineInputBorder(   // линия, когда поле не в фокусе
          borderSide: BorderSide(color: AppColors.primary),
        ),
        focusedBorder: UnderlineInputBorder(   // линия, когда нажал на поле
          borderSide: BorderSide(color: AppColors.fieldBorder, width: 2),
        ),
      ),
      keyboardType: inputType,
      controller: controller,
      obscureText: obscureText,
      inputFormatters: inputFormater,
      maxLength: maxLenght,
    );
  }
}
