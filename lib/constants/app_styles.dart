import 'package:flutter/material.dart';
import 'app_colors.dart';


TextStyle _getTextStyle(double fontSize, Color color,String fontFamily,FontWeight? fontWeight){
  return TextStyle(
    fontFamily: fontFamily,
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color
  );
}

TextStyle getRegularTextStyle({
         double fontSize = 16,
         Color color = Colors.black,
         String fontFamily = 'sen',
         FontWeight? fontWeight
}) {
  return _getTextStyle(fontSize,color,fontFamily,fontWeight);
}

TextStyle getBoldTextStyle({
  double fontSize = 18,
  Color color = Colors.black,
  String fontFamily = 'sen',
  FontWeight fontWeight = FontWeight.bold
}) {
  return _getTextStyle(fontSize,color,fontFamily,fontWeight);
}

ButtonStyle getRegularButtonStyle({required Color bgColor,required double radius}){
  return ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(bgColor),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
            side: BorderSide.none
        )
    ),
    overlayColor:MaterialStateProperty.all<Color>(AppColors.white.withOpacity(0.05)),
  );
}
