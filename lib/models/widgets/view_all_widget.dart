import 'package:flutter/material.dart';

import '../../app_refs.dart';

class ViewAllWidget extends StatelessWidget {

  final String text_heading;
  final VoidCallback func;
  // final double padding;
  final double left_padding;

  const ViewAllWidget({
    super.key,
    required this.func,
    required this.text_heading,
    // required this.padding
    required this.left_padding,

  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Text(
          text_heading,
          style: AppTypography.TittlePoppins.copyWith(fontSize: 12,letterSpacing: -0.3)
        ),
        //-------ДА я делаю отступы так и что-------------------------
        Padding(padding: EdgeInsetsGeometry.only(
          left: left_padding,
        ),
          child: Text(
            'View All',
            style: AppTypography.MainPoppins.copyWith(fontSize: 8)
          ),
        ),
        Padding(
          padding: EdgeInsetsGeometry.only(
              left: 2,
              right: 29.8
          ),
          child: Container(
            width: 7.2,
            height: 6.67,
            child: InkWell(onTap: func,
                child: Image.asset('assets/Access Icon.png'),)
          ),
        )
      ],
    );
  }
}
