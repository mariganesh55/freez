import 'package:freeze_app/http/response/role_type_response.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

setupLocator() {
  getIt.registerLazySingleton<Roles>(() => Roles());
}

class Roles {
  static Rx<RoleTypeResponse?> userRoleResponse = Rx(null);
}
