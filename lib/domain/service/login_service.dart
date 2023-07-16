import 'dart:io';

import 'package:dio/dio.dart';
import 'package:mia_support_system/domain/constant/api_constant.dart';
import 'package:mia_support_system/domain/model/jobs_model.dart';

import '../model/login_model.dart';

class LoginService {
  Future<List<LoginModel>?> getUsersService(String userName, String password) async {
    final response = await Dio().post(ApiConstant.jobPoolEndPoint);
    List<LoginModel>? itemUsers;

    if (response.statusCode == HttpStatus.ok) {
      final datas = response.data['users'];

      if (datas is List) {
        itemUsers = datas.map((e) => LoginModel.fromJson(e)).toList();
      } else {
      
      }
    } else {
      throw Exception('Failed to load Categories from API');
    }

    return itemUsers;
  }
}


