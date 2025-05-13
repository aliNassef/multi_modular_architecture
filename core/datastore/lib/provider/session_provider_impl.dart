import 'package:datastore/provider/session_provider.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: SessionProvider, env: [Environment.prod])
class ProdSessionProviderImpl implements SessionProvider {
  @override
  String? get clientId => '111';

  @override
  String? get getAccessToken => 'access token';

  @override
  String? get getRefreshToken => 'refreshed token';

  @override
  String? get getUserId => '61';
}

@Injectable(as: SessionProvider, env: [Environment.dev])
class DevSessionProviderImpl implements SessionProvider {
  @override
  String? get clientId => '222';

  @override
  String? get getAccessToken => 'access token';

  @override
  String? get getRefreshToken => 'refreshed token';

  @override
  String? get getUserId => '61';
}
