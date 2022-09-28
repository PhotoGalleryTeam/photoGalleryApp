import 'package:flutter/material.dart';
import 'package:photo_gallery/constants/app_colors.dart';
import 'package:photo_gallery/constants/app_styles.dart';

class AuthTextFormField extends StatelessWidget {
  final String hint;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final String? Function(String?)? validator;

  const AuthTextFormField({
    required this.hint,
    this.textInputType,
    this.textInputAction,
    required this.validator,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: AppColors.semiLightGrey,
            blurRadius: 0.015*size.width,
            offset: Offset(0,0.0072*size.width),
          )
        ]
      ),
      child: TextFormField(
        style: getBoldTextStyle(fontSize: size.width*0.038),
        keyboardType: textInputType,
        textInputAction: textInputAction,
        textAlignVertical: TextAlignVertical.center,
        validator: validator,

        decoration: InputDecoration(
          hintText:hint ,
          isDense: true,
          contentPadding: EdgeInsets.symmetric(
            vertical: size.height*0.021,
            horizontal: size.width*0.02
          ),

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(0.036*size.width),
            borderSide: BorderSide.none
          ),

          fillColor: Colors.white,
          filled: true,
        ),
      ),
    );
  }
}
