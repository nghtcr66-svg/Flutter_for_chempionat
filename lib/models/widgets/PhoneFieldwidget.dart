import 'package:android_chempionat/models/widgets/CustomFieldWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PhoneFieldModel extends StatelessWidget{
  final TextEditingController phoneController;
  final TextEditingController regController;
  final String? errMess;

  const PhoneFieldModel({
    super.key,
    required this.phoneController,
    required this.regController,
    this.errMess
  });


  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 64,
          //Юзаем готовый виджет
          child: CustomFieldWidget(
            controller: regController,
            text_hint: '+231',
            inputType: TextInputType.phone,
            maxLenght: 4,
//Необязательный параметр он нужен для валидации но мне интересно было посмотреть як он делает
            inputFormater: [FilteringTextInputFormatter.allow(
              RegExp(
                  r'[+0-9]'
                )
              )
            ],
          )
        ),
        SizedBox(
          width: 45,
        ),
        SizedBox(
          width: 187,
          child: CustomFieldWidget(
            text_hint: 'yourPhone',
            controller: phoneController,
            inputType: TextInputType.phone, 
            maxLenght: 4,
          )
        ),
      ],
    );
  }
}