import 'package:peymo/core/config/app_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class LocalDataStorage {
  Future<bool> saveData(String key, value);
  Future<String> getData(String key);
  Future<void> removeData(String key);
}

class LocalDataStorageImpl implements LocalDataStorage {
  late SharedPreferences preferences;
  Future<void> init() async {
    preferences = await SharedPreferences.getInstance();
  }

  @override
  Future<String> getData(String key) async {
    Log.verbose('Saving $key to local storage');
    return preferences.getString(key)!;
  }

  @override
  Future<bool> saveData(String key, value) async {
    Log.verbose('Getting $key to local storage');
    return await preferences.setString(key, value);
  }

  @override
  Future<void> removeData(String key) async {
    await preferences.remove(key);
  }
}
