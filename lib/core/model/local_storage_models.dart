import 'package:tausifcoincompass/core/constants/app_constants.dart';
import 'package:objectbox/objectbox.dart';

sealed class BaseLocalStorageModel {}

@Entity()
class AppUser extends BaseLocalStorageModel {
  @Id(assignable: true)
  int entityId = AppConstants.appUserEntityId.appUserEntityId;
  String? id;
  String? name;
  String? surname;
  String? accessToken;

  String? refreshToken;
  AppUser({this.id, this.name, this.surname,this.accessToken, this.refreshToken});
}
