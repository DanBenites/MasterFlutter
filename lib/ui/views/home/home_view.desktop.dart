// import 'package:filledstacks_academy/ui/common/app_colors.dart';
import 'package:filledstacks_academy/ui/common/academy_icon.dart';
import 'package:filledstacks_academy/ui/common/app_colors.dart';
import 'package:filledstacks_academy/ui/common/app_constants.dart';
import 'package:filledstacks_academy/ui/common/input_field.dart';
import 'package:filledstacks_academy/ui/common/ui_helpers.dart';
import 'package:filledstacks_academy/ui/views/home/widgets/home_image.dart';
import 'package:filledstacks_academy/ui/views/home/widgets/home_notify_button.dart';
import 'package:filledstacks_academy/ui/views/home/widgets/home_subtitle.dart';
import 'package:filledstacks_academy/ui/views/home/widgets/home_title.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeViewDesktop extends ViewModelWidget<HomeViewModel> {
  const HomeViewDesktop({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Scaffold(
        backgroundColor: kcBackgroundColor,
        // Outside Row
        body: Center(
          child: SizedBox(
            width: kdDesktopMaxContentWidth,
            height: kdDesktopMaxContentHeight,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const AcademyIcon(),
                    const Spacer(flex: 2),
                    const HomeTitle(),
                    const HomeSubtitle(),

                    // Arrow
                    verticalSpaceMedium,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 100),
                      child: SvgPicture.asset('sign-up-arrow.svg'),
                    ),
                    verticalSpaceSmall,

                    const Row(
                      children: [
                        InputField(),
                        horizontalSpaceSmall,
                        HomeNotifyButton()
                      ],
                    ),
                    const Spacer(flex: 3)
                  ],
                ),
                const HomeImage()
              ],
            ),
          ),
        ));
  }
}
