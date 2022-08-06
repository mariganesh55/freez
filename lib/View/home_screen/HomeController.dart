import 'package:freeze_app/http/repository/home_repository.dart';
import 'package:freeze_app/http/response/get_all_target_response/get_all_target_response.dart';
import 'package:freeze_app/http/response/get_role_response.dart';
import 'package:freeze_app/http/response/get_user_profile_response.dart';
import 'package:freeze_app/http/response/role_type_response.dart';
import 'package:freeze_app/singleton.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with StateMixin {
  GetRoleResponse? getRoleResponse;

  GetAllTargetResponse? getAllTargetResponse;

  RoleTypeResponse? roleTypeResponse;

  GetUserProfileResponse? userProfileResponse;

  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();

    await getRoles();
  }

  Future<void> getRoles() async {
    change(null, status: RxStatus.loading());

    //String email = await PreferenceHelper.getPreference("email");

    String email = "falconthaya@gmail.com";

    userProfileResponse = await HomeRepository.getUserProfile(email);
    roleTypeResponse = await HomeRepository.getAllRoles();
    getAllTargetResponse = await HomeRepository.getAllTargets();
    getRoleResponse = await HomeRepository.getRolesCount();

    Singleton.instance.roleTypeResponse = roleTypeResponse;

    change(null, status: RxStatus.success());
  }
}
