import 'package:flutter/material.dart';
import 'package:mia_support_system/presentation/home/views/panel_page.dart';

import '../home/views/job_pool.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                    key: _formKey,
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 1.1,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              TextFormField(
                                validator: (value) {
                                  return (value?.isNotEmpty ?? false)
                                      ? null
                                      : 'Mailinizi giriniz.';
                                },
                                controller: emailController,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.person,
                                    color: Colors.blue[900],
                                  ),
                                  filled: true,
                                  fillColor: Colors.white,
                                  labelText: "Email",
                                  hintText: 'your-email@domain.com',
                                  labelStyle: TextStyle(
                                    color: Colors.blue[900],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              TextFormField(
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
                                    color: Colors.blue[900],
                                  ),
                                  filled: true,
                                  fillColor: Colors.white,
                                  labelText: "Password",
                                  hintText: '*********',
                                  labelStyle: TextStyle(
                                    color: Colors.blue[900],
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
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Container(
                                width: 300,
                                child: ElevatedButton(
                                    onPressed: () {
                                      if (_formKey.currentState!.validate()) {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    PanelPage()));
                                      }
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
                              color: Colors.blue[900]))
                    ]))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
