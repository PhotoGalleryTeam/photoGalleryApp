import 'package:flutter/material.dart';
import 'package:photo_gallery/constants/app_styles.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Favourite Screen',
        style: getBoldTextStyle(),
      ),
    );
  }
}
