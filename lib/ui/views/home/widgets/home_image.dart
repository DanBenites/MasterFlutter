import 'package:filledstacks_academy/ui/common/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeImage extends StatelessWidget {
  const HomeImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(
        'master-web-hero-image.png',
        width: kdDesktopMaxContentWidth * 0.4,
        height: getValueForScreenType<double>(
          context: context,
          mobile: 650,
          desktop: double.infinity,
        ),
        fit: BoxFit.cover,
      ),
    );
  }
}
