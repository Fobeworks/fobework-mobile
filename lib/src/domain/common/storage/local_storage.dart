import 'package:shared_preferences/shared_preferences.dart';

class LocalDataStorage {
  static final LocalDataStorage instance = LocalDataStorage._init();
  static SharedPreferences? _prefs;
  LocalDataStorage._init();

  Future<SharedPreferences> get prefs async {
    if (_prefs != null) return _prefs!;
    _prefs = await SharedPreferences.getInstance();
    return _prefs!;
  }

  final String _firstTime = 'FirstTime';

  Future<bool> setFirstTime() async {
    final pref = await instance.prefs;
    return await pref.setBool(_firstTime, false);
  }

  Future<bool> getFirstTime() async {
    final pref = await instance.prefs;
    return pref.getBool(_firstTime) ?? true;
  }

  Future<bool> clearStorage() async {
    final pref = await instance.prefs;
    await pref.clear();

    return true;
  }
}
