import 'package:rick_and_morty_app/core/shared_pref_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SpService {
  static SpService? _instance;

  static Future<SpService> get instance async {
    if (_instance == null) {
      _instance = SpService._internal();
      await _instance!._init();
    }
    return _instance!;
  }

  SpService._internal();

  static late final SharedPreferences _prefs;

  Future<void> _init() async => _prefs = await SharedPreferences.getInstance();

  String? getData(String key) {
    if (_prefs.containsKey(key)) {
      return _prefs.getString(key);
    } else {
      return null;
    }
  }

  Future<void> setData(String key, String value) async {
    await _prefs.setString(key, value);
  }

  Future<void> removeData(String key) async {
    if (_prefs.containsKey(key)) {
      await _prefs.remove(key);
    }
  }

  List<String>? getListData(String key) {
    if (_prefs.containsKey(key)) {
      return _prefs.getStringList(key);
    } else {
      return null;
    }
  }

  Future<void> setListData(String key, List<String> value) async {
    await _prefs.setStringList(key, value);
  }

  Future<void> addListData(String key, List<String> value) async {
    final Set<String> data = {};
    var oldData = getListData(key);
    if (oldData != null) {
      data.addAll(oldData.toSet());
    }
    data.addAll(value);
    await _prefs.setStringList(key, data.toList());
  }

  Future<bool> isDark() async {
    return _prefs.getBool(SharedPrefKeys.isDark) ?? false;
  }

  Future<void> setTheme(String key, bool isDark) async {
    _prefs.setBool(key, isDark);
  }
}
