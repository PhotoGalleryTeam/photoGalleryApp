import 'dart:developer';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:photo_gallery/constants/app_strings.dart';
import 'package:photo_gallery/constants/app_styles.dart';
import 'package:photo_gallery/presentation/reusable_components/auth_background.dart';
import 'package:photo_gallery/presentation/reusable_components/auth_button.dart';
import 'package:photo_gallery/presentation/reusable_components/auth_text_form_field.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: AuthBackground(
        child: [
          SizedBox(height: size.height * 0.08,),
          _CreateYourAccountText(),

          SizedBox(height: size.height * 0.03,),
          AuthTextFormField(
            hint: AppStrings.email,
            textInputAction: TextInputAction.next,
            textInputType: TextInputType.emailAddress,
            validator: (val) {
              //todo:validate email
            },
          ),

          SizedBox(height: size.height * 0.03,),
          AuthTextFormField(
            hint: AppStrings.password,
            textInputAction: TextInputAction.next,
            validator: (val) {
              //todo:validate password
            },
          ),

          SizedBox(height: size.height * 0.03,),
          AuthTextFormField(
            hint: AppStrings.confirmPassword,
            textInputAction: TextInputAction.done,
            validator: (val) {
              //todo:validate password
            },
          ),

          SizedBox(height: size.height * 0.03,),
          AuthButton(
              onPressed: () {
                //todo: login
              },
              text: AppStrings.register
          ),


        ],
      ),
    );
  }
}

class _CreateYourAccountText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Align(
      alignment: Alignment.topLeft,
      child: SizedBox(
        width: width * 0.4,
        child: FittedBox(
            fit: BoxFit.contain,
            child: Text(AppStrings.createYourAccount, style: getBoldTextStyle())),
      ),
    );
  }
}

