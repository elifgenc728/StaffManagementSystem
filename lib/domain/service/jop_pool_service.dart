// import 'dart:io';

// import 'package:dio/dio.dart';
// import 'package:flutter/foundation.dart';

// import '../model/jobs_model.dart';

// class JobPoolService {

//   late final Dio _dio;
//   JobPoolService() : _dio = Dio(BaseOptions(baseUrl: 'http://localhost:3000/'));
//   @override
//   Future<JobsModel?> fetchJobsItem() async { // aslında önceden listede ResourceModel' e ulaşıyorduk ama model içindeki dataya erişeceğimiz için doğrudan ResourceModel dedik.
//     final response = await _dio.get('/${_JobsPath.jobs.name}');
//     if (response.statusCode == HttpStatus.ok) {
//       final jsonBody = response.data;
//       if (jsonBody is Map<String, dynamic>) {
//         return JobsModel.fromJson(
//             jsonBody); // jsonBody' yi maple ResourceModel içindeki fromJson'a göre listele
//       }
//     }
//     return null; //bir şey yoksa null dönüyor
//   }
// }

// enum _JobsPath{jobs}