import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_strings.dart';
import '../../constants/app_styles.dart';

class AuthBackground extends StatelessWidget {
  final List<Widget> child;

  const AuthBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Stack(
        alignment: Alignment.center,
        children: [
          const BGImage(),

          Container(color: Colors.white.withOpacity(0.75),),

          Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
              child: SingleChildScrollView(
                  child: Column(
                      children: [
                       SizedBox(height: size.height * 0.10,),
                       const _AppName(),
                       ...child
                      ]
                  )
              )
          )
        ],
      ),
    );
  }
}

class _AppName extends StatelessWidget {
  const _AppName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.65,
      child: FittedBox(
          fit: BoxFit.contain,
          child: Text(AppStrings.appName,
              style: getBoldTextStyle(
                color: AppColors.primaryColor,
              ))),
    );
  }
}

class BGImage extends StatelessWidget {
  const BGImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Positioned(
      bottom: -(size.height * 0.025),
      left: -(size.width * 0.3),
      child: Image.asset(
        'assets/images/splash.png',
        width: size.width,
        height: size.height * 0.88,
        fit: BoxFit.cover,
        alignment: Alignment.topRight,
      ),
    );
  }
}

