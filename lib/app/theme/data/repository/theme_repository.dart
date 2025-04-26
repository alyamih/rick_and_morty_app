import 'package:rick_and_morty_app/app/utils/services/sp_service.dart';
import 'package:rick_and_morty_app/core/shared_pref_keys.dart';

class ThemeRepository {
  Future<SpService> get dataSource async => await SpService.instance;

  Future<bool> isDark() async {
    return (await dataSource).isDark();
  }

  Future<void> setTheme(bool isDark) async {
    (await dataSource).setTheme(SharedPrefKeys.isDark, isDark);
  }
}
