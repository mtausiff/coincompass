import 'package:envied/envied.dart';
part 'env.g.dart';

@Envied(path: ".env")
abstract final class Env {
  //TODO: sometimes file changes does not reflect, so make changes here
  @EnviedField(varName: "TEST_BASE_URL", obfuscate: true)
  static final String testBaseUrl = _Env.testBaseUrl;
  @EnviedField(varName: "LIVE_BASE_URL", obfuscate: true)
  static final String liveBaseUrl = _Env.liveBaseUrl;


  @EnviedField(varName: "TEST_COIN_BASE_URL", obfuscate: true)
  static final String testCoinBaseUrl = _Env.testCoinBaseUrl;
  @EnviedField(varName: "LIVE_COIN_BASE_URL", obfuscate: true)
  static final String liveCoinBaseUrl = _Env.liveCoinBaseUrl;

}
