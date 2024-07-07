import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutterfinal/features/settings/models/dark_mode_preference_model.dart';
import 'package:flutterfinal/features/settings/repos/dark_mode_preference_repo.dart';

class DarkModePreferenceViewModel extends Notifier<DarkModePreferenceModel> {
  final DarkModePreferenceRepository _repository;

  DarkModePreferenceViewModel(this._repository);

  void setDark(bool value) {
    _repository.setDark(value);
    state = DarkModePreferenceModel(
      darkMode: value,
    );
  }

  @override
  DarkModePreferenceModel build() {
    return DarkModePreferenceModel(
      darkMode: _repository.isDarkMode(),
    );
  }
}

final darkModePreferenceProvider =
    NotifierProvider<DarkModePreferenceViewModel, DarkModePreferenceModel>(
  () => throw UnimplementedError(),
);
