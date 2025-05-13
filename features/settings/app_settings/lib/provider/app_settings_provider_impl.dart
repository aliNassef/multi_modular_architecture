import 'package:app_settings/provider/app_settings_provider.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AppSettingsProvider, env: [Environment.prod])
class ProdAppSettingsProviderImpl implements AppSettingsProvider {
  @override
  String getAppLanguage() {
    return 'en';
  }

  @override
  String getAppTheme() {
    return 'light';
  }
}

@Injectable(as: AppSettingsProvider, env: [Environment.dev])
class DevAppSettingsProviderImpl implements AppSettingsProvider {
  @override
  String getAppLanguage() {
    return 'ar';
  }

  @override
  String getAppTheme() {
    return 'dark';
  }
}
