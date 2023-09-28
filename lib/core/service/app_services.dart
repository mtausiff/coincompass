import 'package:dio/dio.dart';
import 'package:tausifcoincompass/core/enum/http_type.dart';
import 'package:tausifcoincompass/core/enum/network_path.dart';
import 'package:tausifcoincompass/models/authentication_token_response_model.dart';
import 'package:tausifcoincompass/models/login_response.dart';
import 'package:tausifcoincompass/models/user_auth_model.dart';

import '../../../../core/base/service/base_response.dart';
import '../../../../core/base/service/base_service.dart';
import '../../../../core/network/network_manager.dart';
import '../../pages/oldhome/model/product_model.dart';

abstract base class AppServices {
  static final homeService = _HomeService.instance;
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




final class _AuthenticationService extends BaseService {
  static _AuthenticationService? _instance;

  static _AuthenticationService get instance => _instance ??= _AuthenticationService._init();

  _AuthenticationService._init() : super(NetworkManager.instance);
  Future<BaseResponse<LoginResponse>> login({required UserAuthModel authModel}) async {
    final response = await request<LoginResponse, LoginResponse>(
      path: NetworkPath.login,
      type: HttpType.post,
      data: authModel,
      responseEntityModel: LoginResponse(),
showIndicator: true,
    );
    return response;
  }
}
