import 'package:tausifcoincompass/core/enum/http_type.dart';
import 'package:tausifcoincompass/core/enum/network_path.dart';
import 'package:tausifcoincompass/pages/coinlisting/model/fetch_coin_request_model.dart';

import '../../../../core/base/service/base_response.dart';
import '../../../../core/base/service/base_service.dart';
import '../../../../core/network/network_manager.dart';
import '../../models/authentication_token_request_model.dart';
import '../../models/authentication_token_response_model.dart';
import '../../pages/coinlisting/model/fetch_coinlist_response_model.dart';
import '../../pages/oldhome/model/product_model.dart';

abstract base class AppServices {
  static final homeService = _HomeService.instance;
  static final coinService = _CoinService.instance;
  static final userAuthService = _AuthenticationService.instance;

}

final class _HomeService extends BaseService {
  static _HomeService? _instance;

  static _HomeService get instance => _instance ??= _HomeService._init();

  _HomeService._init() : super(NetworkManager.instance);

  Future<BaseResponse<ProductModel>> getProduct() async {
    final response = await request<ProductModel, ProductModel>(
      path: NetworkPath.products,
      type: HttpType.get,
      responseEntityModel: ProductModel(),

      pathSuffix: "/1",
    );
    return response;
  }
}

final class _CoinService extends BaseService {
  static _CoinService? _instance;
  static _CoinService get instance => _instance ??= _CoinService._init();
  _CoinService._init() : super(NetworkManager.coinInstance);

  Future<BaseResponse<FetchCoinListResponseModel>> getCoins({required FetchCoinRequestModel requestBody, required String? accessToken}) async {
    final response = await request<FetchCoinListResponseModel, FetchCoinListResponseModel>(
      path: NetworkPath.coingecko,
      type: HttpType.get,
      data: requestBody,
      headers: {
        'Authorization': 'Bearer $accessToken',
        'Content-Type': 'application/json'
      },
      responseEntityModel: FetchCoinListResponseModel(),
      pathSuffix: "/v1/getCoinsByQuery",
      showIndicator: true,
    );
    return response;
  }
}


final class _AuthenticationService extends BaseService {
  static _AuthenticationService? _instance;

  static _AuthenticationService get instance => _instance ??= _AuthenticationService._init();

  _AuthenticationService._init() : super(NetworkManager.coinInstance);
  Future<BaseResponse<AuthenticationTokenResponseModel>> getAuthToken({required AuthenticationTokenRequestModel authModel}) async {
    final response = await request<AuthenticationTokenResponseModel, AuthenticationTokenResponseModel>(
      path: NetworkPath.login,
      type: HttpType.post,
      data: authModel,
      responseEntityModel: AuthenticationTokenResponseModel(),
      showIndicator: true,
    );
    return response;
  }
}
