import 'package:mia_support_system/domain/model/jobs_model.dart';

abstract class JobPoolState {}

class JobPoolInitial extends JobPoolState {}

class JobPoolSuccess extends JobPoolState {
  final List<JobsModel> jobList;

  JobPoolSuccess(this.jobList);
}

class JobPoolLoading extends JobPoolState {}

class JobPoolError extends JobPoolState {
  final String errorText;

  JobPoolError(this.errorText);
}
