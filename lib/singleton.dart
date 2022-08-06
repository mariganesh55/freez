import 'http/response/role_type_response.dart';

class Singleton {
  RoleTypeResponse? roleTypeResponse;

  static final Singleton _singleton = Singleton._internal();

  factory Singleton() {
    return _singleton;
  }

  Singleton._internal();

  static Singleton get instance => _singleton;
}
