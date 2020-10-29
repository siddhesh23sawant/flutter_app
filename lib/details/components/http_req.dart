import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:ask_smart_home/constants.dart';




void update({String sw_num, String sw_status}) async {
  String userName = USER_NAME;
  final http.Response response = await http.post(
    // 'http://askautomationserver.club/reg_with_tables.php?user='+userName,
    'http://askautomationserver.club/Update.php?user='+userName+'&switch='+sw_num+'&status='+sw_status,
  );
  if (response.statusCode == 201) {
    // return Album.fromJson(json.decode(response.body));
  }
  else {
    throw Exception('Failed to create album.');
  }
}

// Update.php?user='+userName+sw_num+'='+sw_status,