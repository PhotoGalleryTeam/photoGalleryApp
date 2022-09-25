import 'package:flutter/material.dart';
import 'package:photo_gallery/constants/app_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Home Screen',
        style: getBoldTextStyle(),
      ),
    );
  }
}
