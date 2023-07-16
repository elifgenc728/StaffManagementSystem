import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mia_support_system/presentation/auth/view_model/login_view_model.dart';
import 'package:mia_support_system/presentation/home/views/panel_page.dart';
import 'package:mia_support_system/presentation/auth/login.dart';

import '../../domain/model/login_model.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> formKey = GlobalKey();
  final TextEditingController userNameController = TextEditingController();
 final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // return BlocProvider( // o sayfanın state'inde kullanacağım elemanı veriyorum.
    //   create: (context) => LoginCubit(formKey, userNameController, passwordController),
    //   child: BlocConsumer<LoginCubit, LoginState>(//State kullandığım için Consumer kullanıyorum.
    //     listener: (context, state) {},//state dinlerim
        // builder: (context, state) {//state' e göre işlem yapılır.
          return Scaffold(
    body: SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hoş Geldiniz',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              const SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                child: Form(
                  key: formKey, //textfieldlardaki validatorü etkiler.
                  // autovalidateMode: state is LoginValidateState ? (state.isValidate ? AutovalidateMode.always: AutovalidateMode.disabled) : AutovalidateMode.disabled ,
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 1.1,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            buildTextFormFieldLogin(),
                            SizedBox(
                              height: 8,
                            ),
                            buildTextFormFieldPassword(),
                            const SizedBox(
                              height: 30,
                            ),
                            Container(
                              width: 300,
                              child: ElevatedButton(
                                style:ElevatedButton.styleFrom(backgroundColor: Colors.green[900]),
                                  onPressed: () {
                                  //   context.read<LoginCubit>().postUserModel();
                                  //   if (formKey.currentState!.validate()) {
                                  //     if ( userNameController.text.toString() ==
                                  //             Users().userName &&
                                  //          passwordController.text
                                  //                 .toString() ==
                                  //             Users().password)
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    PanelPage()));
                                  //  } 
                                  //   else {
                                  //     ScaffoldMessenger.of(context)
                                  //         .showSnackBar(
                                  //       const SnackBar(
                                  //           content:
                                  //               Text('Invalid Credentials')),
                                  //     );
                                  //   }
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 12.0),
                                    child: Text(
                                      'Giriş Yap!',
                                      style: TextStyle(fontSize: 17),
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              RichText(
                  text: TextSpan(
                      text: "Kullanıcı girişi için ",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                      children: <TextSpan>[
                    TextSpan(
                        onEnter: (event) {},
                        text: "Kullanıcı Giriş",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.green[900]))
                  ]))
            ],
          ),
        ),
      ),
    ),
  );
    //     },
    //   ),
    // );
  }

  TextFormField buildTextFormFieldPassword() {
    return TextFormField(
                            controller: passwordController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Şifrenizi giriniz.";
                              }
                            },
                            obscuringCharacter: '*',
                            obscureText: true,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.person,
                                color: Colors.green[900],
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              labelText: "Password",
                              hintText: '*********',
                              labelStyle: TextStyle(
                                color: Colors.green[900],
                              ),
                            ),
                            // validator: (value) {
                            //   if (value!.isEmpty && value.length < 5) {
                            //     return 'Enter a valid password';
                            //     {
                            //       return null;
                            //     }
                            //   }
                            // },
                          );
  }

  TextFormField buildTextFormFieldLogin() {
    return TextFormField(
                            validator: (value) {
                              return (value?.isNotEmpty ?? false)
                                  ? null
                                  : 'Mailinizi giriniz.';
                            },
                            controller: userNameController,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.person,
                                color: Colors.green[900],
                              ),
                              filled: true,
                              fillColor: Colors.white,
                              labelText: "Kullanıcı Adı",
                              hintText: 'user.name',
                              labelStyle: TextStyle(
                                color: Colors.green[900],
                              ),
                            ),
                          );
  }
}
