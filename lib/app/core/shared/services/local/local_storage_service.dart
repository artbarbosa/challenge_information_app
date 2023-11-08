abstract class ILocalStorageService {
  Future setStringList<T>(String key, List<String> value);
  Future<List<String>?> getStringList<T>(String key);
}
