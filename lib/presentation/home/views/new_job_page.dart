import 'package:flutter/material.dart';
import 'package:mia_support_system/presentation/home/views/detail_page.dart';
import 'package:mia_support_system/presentation/viewModel/buttoncontrol_provider.dart';
import 'package:mia_support_system/presentation/widget/custom_dropdown.dart';
import 'package:provider/provider.dart';

import '../../widget/custom_chipwidget.dart';
import '../../widget/custom_radiobutton.dart';
import '../../widget/customadd_dropdown.dart';
import '../../widget/customradiobutton.dart';
import '../../widget/custom_cool_alert.dart';

class NewJobPage extends StatefulWidget {
  const NewJobPage({super.key});

  @override
  State<NewJobPage> createState() => _NewJobPageState();
}

class _NewJobPageState extends State<NewJobPage> {
  TextEditingController _subjectTextEditingController = TextEditingController();
  TextEditingController _messageTextEditingController = TextEditingController();
  bool _buttonIsActive = false;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ButtonControlProvider>(
      create: (BuildContext context) {
        return ButtonControlProvider();
      },
      child: Scaffold(
          floatingActionButton: _buttonIsActive
              ? FloatingActionButton.extended(
                  backgroundColor: Colors.blue[900],
                  label: Text(' Gönder'),
                  icon: Icon(
                    Icons.send_sharp,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    _showSuccesAlertDialog(context);
                  })
              : null,
          appBar: AppBar(
            title: Text('Yeni Hizmet İsteği'),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Center(
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: <Widget>[
                          Text('İstek Detayları ',
                              style: Theme.of(context).textTheme.titleLarge),
                          Divider(
                            thickness: 2,
                            endIndent: 100,
                            indent: 40,
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 22,
                                child: ListTile(
                                  title: Text(
                                    "Kurum: ",
                                    maxLines: 1,
                                  ),
                                  subtitle: Text(
                                    "Mia Teknoloji HBYS",
                                    style: TextStyle(fontFamily: ' Trajan Pro'),
                                    maxLines: 2,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 20,
                                child: ListTile(
                                  title: const Text(
                                    "Ekleyen: ",
                                    maxLines: 1,
                                  ),
                                  subtitle: Text(
                                    "Elif GENÇ",
                                    maxLines: 1,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 15,
                                child: ListTile(
                                  title: Text(
                                    "Tarihi: ",
                                    maxLines: 1,
                                  ),
                                  subtitle: Column(
                                    children: [
                                      Text(
                                        "26.04.2023",
                                        maxLines: 1,
                                      ),
                                      Text('14:04:23')
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  _buildSubjectTextField(),
                  SizedBox(
                    height: 15,
                  ),
                  _buildMessageTextField(),
                  SizedBox(
                    height: 15,
                  ),
                  CustomPriorityChips(),
                  SizedBox(
                    height: 15,
                  ),
                  CustomRequestChips(),
                ],
              ),
            ),
          )),
    );
  }

  void _showSuccesAlertDialog(BuildContext context) {
    CoolAlertCustom.successCoolAlert(context);
  }

  CustomBorderTextField _buildMessageTextField() {
    return CustomBorderTextField(
      // onChanged: (value) {
      //   Provider.of<ButtonControlProvider>(context)._buttonIsActiveControl(value);
      // },
      textEditingController: _messageTextEditingController,
      labelText: "Mesaj",
      hintText: 'Mesajınızı giriniz',
      prefixIcon: Icons.message_rounded,
    );
  }

  void _buttonIsActiveControl() {
    if (_messageTextEditingController.text.isNotEmpty &&
        _subjectTextEditingController.text.isNotEmpty) {
      _buttonIsActive = true;
    } else {
      _buttonIsActive = false;
    }
  }

  CustomBorderTextField _buildSubjectTextField() {
    return CustomBorderTextField(
      onChanged: (value) {
        setState(() {
          _buttonIsActiveControl();
        });
      },
      textEditingController: _subjectTextEditingController,
      labelText: "Konu",
      hintText: "Konu giriniz.",
      // width: 350,
      prefixIcon: Icons.subject,
    );
  }
}
