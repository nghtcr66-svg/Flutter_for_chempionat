import 'package:flutter/material.dart';
import 'CustomFieldModel.dart';
import 'package:flutter/services.dart';

//TODO Сделать void dispose() чтобы не было утечек памяти
// и сделать заглушку логики


//Юзаем StateFul потому что нужно взаимодействовать с переменными
class PasswordFieldModel extends StatefulWidget{
  final TextEditingController controller;
  final String? errMess;
  final String hintText;

  const PasswordFieldModel({
    super.key,
    required this.controller,
    required this.hintText,
    this.errMess
  });

  @override
  State<PasswordFieldModel> createState() => _PasswordFieldState();
}
//Билдим
class _PasswordFieldState extends State<PasswordFieldModel> {
  bool _hide = true;

  @override
  Widget build(BuildContext context) {
    return CustomFieldModel(
      text_hint: widget.hintText,
      controller: widget.controller,
      obscureText: _hide,
      suffixIcon: IconButton(
// Помогал Claude code и немного кода Ярослава(что в целом одно и то же) 
        onPressed: () => setState(() {
          _hide = !_hide;
        }),
         icon: Icon(
          _hide ? Icons.visibility_outlined : Icons.visibility_off_outlined,
          size: 20,
        )
      ),
    );
  }  
}