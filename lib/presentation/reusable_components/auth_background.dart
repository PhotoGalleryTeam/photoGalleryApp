import 'package:flutter/material.dart';

class AuthBackground extends StatelessWidget {
  final Widget child;
  const AuthBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            bottom: -(size.height * 0.025),
            left: -(size.width * 0.3),
            child: Image.asset(
              'assets/images/splash.png',
              width: size.width,
              height: size.height * 0.88,
              fit: BoxFit.cover,
              alignment: Alignment.topRight,
            ),
          ),
          Container(color: Colors.white.withOpacity(0.75),),

          child

        ],
      ),
    );
  }
}
