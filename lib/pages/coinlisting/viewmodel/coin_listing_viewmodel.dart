import 'package:get/get.dart';
import 'package:tausifcoincompass/core/base/viewmodel/base_viewmodel.dart';
import 'package:tausifcoincompass/core/enum/page_state.dart';
import 'package:tausifcoincompass/pages/coinlisting/model/coin_details_base_model.dart';
import 'package:tausifcoincompass/pages/oldhome/model/product_model.dart';

import '../../../core/constants/app_constants.dart';
import '../../../core/constants/navigation_constants.dart';
import '../../../core/service/app_services.dart';
import '../model/fetch_coin_request_model.dart';
import '../model/fetch_coinlist_response_model.dart';

final class CoinListingViewModel extends BaseViewModel {
  static bool get isRegistered => Get.isRegistered<CoinListingViewModel>();
  static CoinListingViewModel? get to => isRegistered ? Get.find() : null;
  final _coinService = AppServices.coinService;
  final navigationIndex = 0.obs;

  List<CoinDetailsBaseModel> coinList = [];

  @override
  void onInit() async {
  //perform any initialize operation here
    setPageState(PageState.loading);
    super.onInit();
    final appUser = localStorage.getAppUser(entityId: AppConstants.appUserEntityId.appUserEntityId);
    //String? accessToken = appUser?.accessToken.toString();
    String? accessToken = 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJndWVzdHVzZXJAbmZ0LmNvbSIsImlhdCI6MTY5Njg3NDc2NywiZXhwIjoxNjk2ODc4MzY3fQ.nBddvEl0M2XKKc0bZiiUGrZzf2B7HUbSHuLVEjuq6UI';

    FetchCoinRequestModel requestModel = FetchCoinRequestModel(
      queryName : 'GET_X_NUMBER_OF_COIN_DETAILS',
      totalCoins : 10,
    );

    final response = await _coinService.getCoins(requestBody :  requestModel, accessToken : accessToken);

    if(response.networkError?.statusCode == 200 &&
        response.data != null &&
        response.data!.code == 200){
      coinList = response.data!.data!;
    }
  }

  @override
  void onReady() async {
    //perform any operation here
    setPageState(PageState.success);
    super.onReady();
  }

  Future<void> navigateToLogin() async {
    await offNamed(NavigationConstants.login);
  }

  Future<void> navigateToHome() async {
    await offNamed(NavigationConstants.home);
  }
}