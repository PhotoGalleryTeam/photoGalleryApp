import 'package:flutter/material.dart';
import '../../../constants/app_styles.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'User Orders : Three taps [completed,waiting,declined]',
        style: getBoldTextStyle(),
      ),
    );
  }
}
