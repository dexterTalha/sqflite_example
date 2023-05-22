import 'package:flutter/material.dart';
import 'package:sqflite_example/models/user_model.dart';

import '../../db/sqflite_helper.dart';

class AuthProvider with ChangeNotifier {
  bool isLoading = false;

  Future<bool> createUser(UserModel user) async {
    isLoading = true;
    notifyListeners();
    bool result = await SqfLiteHelper.insertUser(user);
    // await Future.delayed(const Duration(seconds: 5));
    isLoading = false;
    notifyListeners();
    return result;
  }
}
