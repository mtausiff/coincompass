import 'package:get/get.dart';

import '../../../../../../core/base/viewmodel/base_viewmodel.dart';

final class VideoSliderViewModel extends BaseViewModel {
  static VideoSliderViewModel get to => Get.find();

  List<String> videoUrlList = [
    'https://www.youtube.com/watch?v=3gU1OLKBcys&ab_channel=LazyTechNo',
    'https://www.youtube.com/watch?v=YMx8Bbev6T4&ab_channel=FlutterUIDev',
    'https://www.youtube.com/watch?v=i_FwqzYMUvk&ab_channel=kudvenkat',
  ];

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() async {
    super.onReady();
  }
}
