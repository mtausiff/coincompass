import 'package:tausifcoincompass/core/enum/network_path.dart';

extension NetworkPathExtension on NetworkPath {
  String get path => switch (this) {
        NetworkPath.products => "/products",
      };
}
