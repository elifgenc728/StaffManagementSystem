// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class LoginCubit extends Cubit<LoginState> {
//  final TextEditingController userNameController;
//  final TextEditingController passwordController;
// final GlobalKey<FormState> formKey;

// bool isLoginFail = false;

//   LoginCubit(this.formKey, this.userNameController, this.passwordController) : super(LoginInitial());

// void postUserModel(){
// if (formKey.currentState?.validate() ?? false) {
//   //servise istek atılacak.
// }else{
// isLoginFail = true;
// LoginValidateState(isLoginFail);
// emit(LoginValidateState(isLoginFail)); // sayfaya haber verirken emit etmek gerekiyor
// }
// }

// }

// abstract class LoginState {}

// class LoginInitial extends LoginState {}

// class LoginValidateState extends LoginState{
//   final bool isValidate;

//   LoginValidateState(this.isValidate);
  
// }