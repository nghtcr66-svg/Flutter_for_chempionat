import 'package:flutter/material.dart';

import '../../app_refs.dart';

class ViewAllWidget extends StatelessWidget {

  final String text_heading;
  final VoidCallback func;
  final double padding;

  const ViewAllWidget({
    super.key,
    required this.func,
    required this.text_heading,
    required this.padding
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(padding: EdgeInsetsGeometry.only(
            left: 5
        ), child: Text(
          text_heading,
          style: TextStyle(
              color: AppColors.primary,
              fontFamily: 'RedHatText',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              height: 28/20
          ),
        ),
        ),
        //-------ДА я делаю отступы так и что-------------------------
        Padding(padding: EdgeInsetsGeometry.only(
          left: padding,
        ),
          child: Text(
            'View All',
            style: TextStyle(
                color: AppColors.textDark,
                fontFamily: 'RedHatText',
                fontSize: 12,
                fontWeight: FontWeight.normal,
                height: 12/20
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsGeometry.only(right: 5),
          child: IconButton(onPressed: (){}, icon: Icon(
            Icons.double_arrow,
          ), color: AppColors.primary,
          ),
        )
      ],
    );
  }
}
