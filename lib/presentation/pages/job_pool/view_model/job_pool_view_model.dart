import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mia_support_system/domain/model/jobs_model.dart';
import 'package:mia_support_system/domain/service/jop_pool_service.dart';

import 'job_pool_state.dart';


class JobPoolCubit extends Cubit<JobPoolState> {
  JobPoolCubit() : super(JobPoolInitial());

  final _jobService = JobPoolService();


  Future<void> getJobs() async {
    emit(JobPoolLoading());

    await _jobService.getJobsService().then((value) {
      if (value!.isNotEmpty) {

        emit(JobPoolSuccess(value));
      } else {
        emit(JobPoolError(
          "Liste boş",
        ));
      }
    }).onError(
      (error, stackTrace) {
        emit(JobPoolError(error.toString()));
      },
    );
  }
}



