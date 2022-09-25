import 'package:flutter/material.dart';

import '../../../constants/app_styles.dart';

class CustomOrderPage extends StatelessWidget {
  const CustomOrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Custom Order',
        style: getBoldTextStyle(),
      ),
    );
  }
}
