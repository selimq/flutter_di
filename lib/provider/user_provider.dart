// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'package:flutter_di/services/http-service.dart';
import 'package:flutter_di/services/user-service.dart';

@singleton
class UserProvider with ChangeNotifier {
  final UserService userService;
  final HttpService httpService;
  UserProvider({
    required this.userService,
    required this.httpService,
  });
  int init() {
    print("provider");
    return userService.get();
  }
}
