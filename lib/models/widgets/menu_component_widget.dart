import 'package:android_chempionat/app_refs.dart';
import 'package:flutter/material.dart';

class MenuComponentWidget extends StatelessWidget {

    final Widget icon;
    final double inner_padding;
    final String text;

  const MenuComponentWidget({
    super.key,
    required this.icon,
    required this.inner_padding,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 37),
      child: Container(
        width: 375,
        height: 24,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsetsGeometry.only(
                  left: 60.43
                ),
                child: icon
            ),
            Padding(
              padding: EdgeInsetsGeometry.only(
                  left: inner_padding
              ),
              child: Text(
                text,
                style: AppTypography.MainPoppins.copyWith(letterSpacing: -0.3),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
