import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:photo_gallery/constants/app_colors.dart';
import 'package:photo_gallery/constants/app_styles.dart';

class AuthButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  const AuthButton({
    required this.onPressed,
    Key? key, required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(width: double.infinity, height: size.height*0.072),
      child: ElevatedButton(
          onPressed: onPressed,
          style: getRegularButtonStyle(bgColor: AppColors.primaryColor, radius: 0.036*size.width),

          child: LayoutBuilder(
            builder:(_, constraints) {
              return SizedBox(
                width: constraints.maxWidth*0.9,
                height: constraints.maxHeight*0.44,
                child: FittedBox(
                  child: Text(text, style: getBoldTextStyle(color: AppColors.white),
                  ),
                ),
              );
            },
          ),
      ),
    );
  }
}
