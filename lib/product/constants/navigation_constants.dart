import 'package:get/get.dart';
import 'package:tausifcoincompass/product/extension/navigation_constants_extension.dart';

enum NavigationConstants {
  splash,
  oldhome,
  home,
  login,
  register,
  coindetails,
  coinlisting,
  contactus,
  videopage,
}

List<GetPage> get getPages => NavigationConstants.values.map((e) => GetPage(name: e.pageName, page: () => e.pageWidget)).toList();
