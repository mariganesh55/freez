import 'package:shared_preferences/shared_preferences.dart';

class SharedService {
  static SharedPreferences? sharePrefer;

  final EmailUser = 'email';

  init() async {
    final sharePrefer = await SharedPreferences.getInstance();
    print(sharePrefer);
  }

  setUserName(String userName) async {
    await sharePrefer!.setString(EmailUser, userName);
  }

  getUserDetails() async {
    await sharePrefer!.getString(EmailUser);
  }
}
