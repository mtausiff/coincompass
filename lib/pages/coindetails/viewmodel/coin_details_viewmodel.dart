import 'package:get/get.dart';
import 'package:tausifcoincompass/core/base/viewmodel/base_viewmodel.dart';
import 'package:tausifcoincompass/core/enum/page_state.dart';

final class CoinDetailsViewModel extends BaseViewModel {
  static bool get isRegistered => Get.isRegistered<CoinDetailsViewModel>();
  static CoinDetailsViewModel? get to => isRegistered ? Get.find() : null;

  @override
  void onInit() {
  //perform any initialize operation here
    setPageState(PageState.loading);
    super.onInit();
  }

  @override
  void onReady() async {
    //perform any operation here
    setPageState(PageState.success);
    super.onReady();
  }
}