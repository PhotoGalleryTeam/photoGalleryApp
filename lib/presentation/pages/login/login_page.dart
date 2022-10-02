import 'dart:developer';
import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:photo_gallery/constants/app_colors.dart';
import 'package:photo_gallery/constants/app_strings.dart';
import 'package:photo_gallery/constants/app_styles.dart';
import 'package:photo_gallery/presentation/reusable_components/auth_background.dart';
import 'package:photo_gallery/presentation/reusable_components/auth_button.dart';
import 'package:photo_gallery/presentation/reusable_components/auth_text_form_field.dart';
import '../../../constants/app_images.dart';
import '../../../constants/app_routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: AuthBackground(
            child: [

                    SizedBox(height: size.height * 0.08,),
                    _LoginToYourAccountText(),

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
                        text: AppStrings.login
                    ),

                    SizedBox(height: size.height * 0.04,),
                    _ORSeparator(),

                    SizedBox(height: size.height * 0.03,),
                    GoogleAuthButton(
                        onPressed: (){
                          //todo: signup with google
                        },
                        text: AppStrings.continueWithGoogle
                    ),

                    SizedBox(height: size.height * 0.03,),
                    _DoNotHaveAnAccount(
                        onTap: (){
                          Navigator.pushNamed(context, AppRoutes.registerPageRoute);
                        }
                    )
                  ],
            )
    );
  }
}


class _LoginToYourAccountText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Align(
      alignment: Alignment.topLeft,
      child: SizedBox(
        width: width * 0.45,
        child: FittedBox(
            fit: BoxFit.contain,
            child: Text(
                AppStrings.loginTitle,
                style: getBoldTextStyle()
            )
        ),
      ),
    );
  }
}

class _ORSeparator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
                child: Divider(
                  thickness: 0.005*size.width,
                  color: Colors.grey.shade400,
                )
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.02 * size.width),
              child: SizedBox(
                width: size.width * 0.05,
                child: FittedBox(
                    child: Text(
                       'OR',
                        style: getBoldTextStyle(color: AppColors.grey)
                    )
                ),
              ),
            ),

            Expanded(
                child: Divider(
                  thickness: 0.005*size.width,
                  color: Colors.grey.shade400,
                )
            ),
          ]
      );
  }
}

class GoogleAuthButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const GoogleAuthButton({
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
          style: getRegularButtonStyle(bgColor: AppColors.lightGrey, radius: 0.036*size.width),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Row(
                children: [
                  SizedBox(width:constraints.maxWidth*0.03),

                  Flexible(
                    child: SizedBox(
                      height: 0.6 *constraints.maxHeight,
                      width: 0.11*constraints.maxWidth,
                      child: FittedBox(
                        child: Image.asset(AppImages.googleImage,),
                      ),
                    ),
                  ),


                  SizedBox(width:constraints.maxWidth*0.095),

                  Flexible(
                    flex: 4,
                    child: SizedBox(
                      width: constraints.maxWidth * 0.64,
                      height: constraints.maxHeight*0.44,
                      child: FittedBox(
                        child: Text(
                          text,
                          style: getBoldTextStyle(
                              fontSize: 16,
                              color: AppColors.black.withOpacity(0.8)
                          ),
                        ),
                      ),
                    ),
                  )

                ],
              );
            },
          )
      ),
    );
  }
}

class _DoNotHaveAnAccount extends StatelessWidget {
  final VoidCallback onTap;
  const _DoNotHaveAnAccount({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return  SizedBox(
      width: size.width*0.5,
      height: size.height*0.1,
      child: FittedBox(
        child: RichText(
          text: TextSpan(
              text: AppStrings.haveNoAccount,
              style: getRegularTextStyle(),
              children: [
                TextSpan(
                    text: AppStrings.register,
                    style: getRegularTextStyle(textDecoration: TextDecoration.underline),
                    recognizer: TapGestureRecognizer()..onTap = onTap
                )
              ]
          ),
        ),
      ),
    );
  }
}

