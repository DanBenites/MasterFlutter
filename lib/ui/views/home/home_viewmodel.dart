import 'package:filledstacks_academy/app/app.dialogs.dart';
import 'package:filledstacks_academy/app/app.locator.dart';
import 'package:filledstacks_academy/ui/views/home/home_view.form.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends FormViewModel {
  final _dialogService = locator<DialogService>();

  void captureEmail() {
    _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: 'Thanks for Signing Up',
      description: 'Check in $emailValue for a verification email',
    );
  }
}
