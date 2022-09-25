import 'package:flutter/material.dart';

import '../../../constants/app_styles.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Cart Screen',
        style: getBoldTextStyle(),
      ),
    );
  }
}
