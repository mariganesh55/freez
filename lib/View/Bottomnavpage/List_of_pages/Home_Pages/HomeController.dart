import 'package:flutter/material.dart';
import 'package:freeze_app/Model/userRank.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  List rolesData = [];

  bool isloading = false;
  bool isLoding = true;
  List<UserRankList>? userRank;
  String? setTime, setDate;

  String? hour, minute, time;

  String? dateTime;

  DateTime selectedDate = DateTime.now();

  TimeOfDay selectedTime = TimeOfDay(hour: 00, minute: 00);

  TextEditingController dateController = TextEditingController();
  TextEditingController timeController = TextEditingController();
}
