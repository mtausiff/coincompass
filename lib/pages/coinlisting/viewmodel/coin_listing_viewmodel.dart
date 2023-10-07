import 'package:get/get.dart';
import 'package:tausifcoincompass/core/base/viewmodel/base_viewmodel.dart';
import 'package:tausifcoincompass/core/enum/page_state.dart';
import 'package:tausifcoincompass/pages/oldhome/model/product_model.dart';

import '../../../core/constants/navigation_constants.dart';
import '../../../core/service/app_services.dart';

final class CoinListingViewModel extends BaseViewModel {
  static bool get isRegistered => Get.isRegistered<CoinListingViewModel>();
  static CoinListingViewModel? get to => isRegistered ? Get.find() : null;
  final _coinService = AppServices.coinService;
  final navigationIndex = 0.obs;

  List<ProductModel> coinList = [];

  @override
  void onInit() async {
  //perform any initialize operation here
    setPageState(PageState.loading);
    super.onInit();
    final response = await _coinService.getCoins();
    coinList = response.data!;
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