import 'dart:io';

import 'package:dio/dio.dart';
import 'package:mia_support_system/domain/constant/api_constant.dart';
import 'package:mia_support_system/domain/model/jobs_model.dart';

class JobPoolService {
  Future<List<JobsModel>?> getJobsService() async {
    final response = await Dio().get(ApiConstant.jobPoolEndPoint);
    List<JobsModel>? items;

    if (response.statusCode == HttpStatus.ok) {
      final datas = response.data['jobs'];

      if (datas is List) {
        items = datas.map((e) => JobsModel.fromJson(e)).toList();
      } else {

      }
    } else {
      throw Exception('Failed to load Categories from API');
    }

    return items;
  }

  
}
