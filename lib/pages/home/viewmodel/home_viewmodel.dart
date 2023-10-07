import 'package:get/get.dart';
import 'package:tausifcoincompass/core/base/viewmodel/base_viewmodel.dart';
import 'package:tausifcoincompass/core/constants/navigation_constants.dart';
import 'package:tausifcoincompass/core/enum/page_state.dart';

final class HomeViewModel extends BaseViewModel {
  static bool get isRegistered => Get.isRegistered<HomeViewModel>();
  static HomeViewModel? get to => isRegistered ? Get.find() : null;

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

  Future<void> navigateToLogin() async {
    await 1.seconds.delay(
      () async {
        await offNamed(NavigationConstants.login);
      },
    );
  }

  Future<void> navigateToRegister() async {
    await 1.seconds.delay(
      () async {
        await offNamed(NavigationConstants.register);
      },
    );
  }

  Future<void> navigateToVideoPage() async {
    await 1.seconds.delay(
      () async {
        await offNamed(NavigationConstants.videopage);
      },
    );
  }

  Future<void> navigateToCoinListingPage() async {
    await offNamed(NavigationConstants.coinlisting);
  }

  Future<void> navigateToCoinDetailsPage() async {
    await offNamed(NavigationConstants.coindetails);
  }
}
