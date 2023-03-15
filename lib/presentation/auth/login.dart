import 'package:flutter/material.dart';
import 'package:mia_support_system/presentation/home/views/panel_page.dart';

import '../home/views/job_pool.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  void dispose() {
    _textEditingController.clear();
    super.dispose();
  }

  bool isEmailCorrect = false;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
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

                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Container(
                          height: isEmailCorrect ? 280 : 200,
                          // _formKey!.currentState!.validate() ? 200 : 600,
                          // height: isEmailCorrect ? 260 : 182,
                          width: MediaQuery.of(context).size.width / 1.1,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              TextFormField(
                                controller: _textEditingController,
                                onChanged: (val) {
                                  setState(() {
                                    //isEmailCorrect = isEmail(val);
                                  });
                                },
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
                              TextFormField(
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
                                validator: (value) {
                                  if (value!.isEmpty && value.length < 5) {
                                    return 'Enter a valid password';
                                    {
                                      return null;
                                    }
                                  }
                                },
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width - 100,
                                child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => PanelPage()));
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

                  //
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
