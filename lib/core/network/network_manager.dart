import 'package:dio/dio.dart';

import '../../env/env.dart';
import '../../core/constants/app_constants.dart';
import '../../core/enum/build_type.dart';
import 'core_dio.dart';

final class NetworkManager {
  late final CoreDio coreDio;

  static NetworkManager? _instance;
  static NetworkManager get instance => _instance ??= NetworkManager._();

  static NetworkManager? _coinInstance;
  static NetworkManager get coinInstance => _coinInstance ??= NetworkManager._coin();

  NetworkManager._() {
    coreDio = CoreDio(
      baseOptions: BaseOptions(
        baseUrl: AppConstants.appBuildType.buildType == BuildType.test ? Env.testBaseUrl : Env.liveBaseUrl,
      ),
    );
  }

  NetworkManager._coin() {
    coreDio = CoreDio(
      baseOptions: BaseOptions(
        baseUrl: AppConstants.appBuildType.buildType == BuildType.test ? Env.testCoinBaseUrl : Env.liveCoinBaseUrl,
      ),
    );
  }
}
