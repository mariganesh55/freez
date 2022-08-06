import 'package:freeze_app/View/Bottomnavpage/List_of_pages/splashscreen.dart';
import 'package:freeze_app/View/SignIn/login_screen/login_screen.dart';
import 'package:freeze_app/View/SignIn/register_screen/email_verification_screen/email_verification_screen.dart';
import 'package:freeze_app/View/SignIn/register_screen/register_screen.dart';
import 'package:freeze_app/View/SignIn/reset_password_screen/resetPassword.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import 'View/home_tab_screen/home_tab_screen.dart';

class AppRoutes {
  static List<GetPage<dynamic>>? routes = [
    GetPage(name: '/', page: () => SplashScreen()),
    GetPage(name: '/register', page: () => RegisterScreen()),
    GetPage(name: '/login', page: () => LoginScreen()),
    GetPage(name: '/home_tab', page: () => HomeTabScreen()),
    GetPage(
        name: '/email_verification_page',
        page: () => EmailVerificationScreen()),
    GetPage(name: '/reset_password_screen', page: () => ResetPasswordScreen()),
  ];
}
