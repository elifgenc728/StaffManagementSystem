import 'dart:io';

import 'package:dio/dio.dart';
import 'package:mia_support_system/domain/constant/api_constant.dart';
import 'package:mia_support_system/domain/model/jobs_model.dart';
import 'package:mia_support_system/domain/model/users_model.dart';

class LoginService {
  Future<List<UsersModel>?> getUsersService() async {
    final response = await Dio().post(ApiConstant.jobPoolEndPoint);
    List<UsersModel>? itemUsers;

    if (response.statusCode == HttpStatus.ok) {
      final datas = response.data['users'];

      if (datas is List) {
        itemUsers = datas.map((e) => UsersModel.fromJson(e)).toList();
      } else {
        //Liste değilse napcak kardeşim
      }
    } else {
      throw Exception('Failed to load Categories from API');
    }

    return itemUsers;
  }
}
