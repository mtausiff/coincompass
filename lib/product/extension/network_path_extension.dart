import 'package:tausifcoincompass/product/enum/network_path.dart';

extension NetworkPathExtension on NetworkPath {
  String get path => switch (this) {
        NetworkPath.products => "/products",
      };
}
