import 'package:shared_preferences/shared_preferences.dart';

import 'local_storage_service.dart';

class SharedPreferencesLService implements ILocalStorageService {
  final Future<SharedPreferences> sharedPreferences;

  SharedPreferencesLService({
    required this.sharedPreferences,
  });

  @override
  Future<List<String>?> getStringList<T>(String key) async {
    final prefs = await sharedPreferences;
    return prefs.getStringList(key);
  }

  @override
  Future<bool> setStringList<T>(String key, List<String> value) async {
    final prefs = await sharedPreferences;
    return prefs.setStringList(key, value);
  }
}
