import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'home_view.desktop.dart';
// import 'home_view.tablet.dart';
import 'home_view.form.dart';
import 'home_view.mobile.dart';
import 'home_viewmodel.dart';

// #1: Tell Stacked which text values you'll be capturing
@FormView(fields: [FormTextField(name: 'email')])
class HomeView extends StackedView<HomeViewModel> with $HomeView {
  HomeView({super.key});
  // #2: Extend the generated form mixin
  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return ScreenTypeLayout.builder(
      mobile: (_) => HomeViewMobile(controller: emailController),
      // tablet: (_) => const HomeViewTablet(),
      desktop: (_) => HomeViewDesktop(controller: emailController),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();

  @override
  void onViewModelReady(HomeViewModel viewModel) {
    // #3: Enable two way binding
    syncFormWithViewModel(viewModel);
  }
}
