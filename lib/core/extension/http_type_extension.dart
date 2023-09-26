import 'package:tausifcoincompass/core/enum/http_type.dart';

extension HttpTypeExtension on HttpType {
  String get type => switch (this) {
        HttpType.get => "GET",
        HttpType.post => "POST",
        HttpType.put => "PUT",
        HttpType.delete => "DELETE",
      };
}
