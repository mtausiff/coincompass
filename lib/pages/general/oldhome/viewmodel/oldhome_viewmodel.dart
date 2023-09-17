import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tausifcoincompass/core/base/viewmodel/base_viewmodel.dart';
import 'package:tausifcoincompass/pages/general/oldhome/widgets/oldhome_dialog/view/oldhome_dialog_view.dart';
import 'package:tausifcoincompass/product/enum/page_state.dart';
import 'package:tausifcoincompass/product/service/app_services.dart';

import '../../../../product/constants/app_constants.dart';
import '../../../../product/model/local_storage_models.dart';

final class OldHomeViewModel extends BaseViewModel {
  static bool get isRegistered => Get.isRegistered<OldHomeViewModel>();
  static OldHomeViewModel? get to => isRegistered ? Get.find() : null;

  @override
  void onInit() {
    setPageState(PageState.loading);
    super.onInit();
  }

  @override
  void onReady() async {
    _putUserEntityToDb();
    final response = await _homeService.getProduct();
    setPageState(PageState.success);
    super.onReady();
  }

  final _homeService = AppServices.homeService;
  final navigationIndex = 0.obs;

  void _putUserEntityToDb() {
    int entityId = localStorage.putEntity(
      entity: AppUser(id: "10001", name: "Admin", surname: "User"),
    );
    debugPrint("entityId: $entityId");
    AppUser? appUser = localStorage.getAppUser(entityId: AppConstants.appUserEntityId.appUserEntityId);
    debugPrint("${appUser?.name} ${appUser?.surname} id:${appUser?.id}");
  }

  void onDestinationSelected(int selectedDestinationIndex) {
    navigationIndex.value = selectedDestinationIndex;
  }

  Future<void> onFloatingActionButtonPressed() async {
    if (context != null) {
      await showDialog(
        context: context!,
        builder: (context) => OldHomeDialog(),
      );
    }
  }
}
