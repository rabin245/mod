import 'package:shared_preferences/shared_preferences.dart';

class ThemeSharedPreference {
  loadTheme() async {
    SharedPreferences sharedPreference = await SharedPreferences.getInstance();
    bool darkPref = sharedPreference.getBool('isDark') ?? true;
    return darkPref;
  }

  setTheme(bool value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool('isDark', value);
  }
}
