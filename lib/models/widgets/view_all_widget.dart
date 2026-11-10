import 'package:flutter/material.dart';

import '../../app_refs.dart';

class ViewAllWidget extends StatelessWidget {
  final String text_heading;
  final VoidCallback func;
  // final double padding;

  const ViewAllWidget({
    super.key,
    required this.func,
    required this.text_heading,
    // required this.padding
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text_heading,
          style: AppTypography.TittlePoppins.copyWith(
            fontSize: 12,
            letterSpacing: -0.3,
          ),
        ),
        //-------ДА я делаю отступы так и что-------------------------
        Row(
          spacing: 5,
          children: [
            Text(
              'View All',
              style: AppTypography.MainPoppins.copyWith(fontSize: 8),
            ),
            SizedBox(
              width: 7.2,
              height: 6.67,
              child: InkWell(
                onTap: func,
                child: Image.asset('assets/Access Icon.png'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
