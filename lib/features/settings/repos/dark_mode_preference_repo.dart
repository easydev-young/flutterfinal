import 'package:shared_preferences/shared_preferences.dart';

class DarkModePreferenceRepository {
  static const String _darkMode = "darkMode";

  final SharedPreferences _preferences;

  DarkModePreferenceRepository(this._preferences);

  Future<void> setDark(bool value) async {
    await _preferences.setBool(_darkMode, value);
  }

  bool isDarkMode() {
    return _preferences.getBool(_darkMode) ?? false;
  }
}
