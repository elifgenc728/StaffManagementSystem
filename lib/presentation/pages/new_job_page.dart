import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../widget/custom_chipwidget.dart';
import '../widget/custom_cool_alert.dart';
import 'detail_page.dart';
import 'job_pool/view_model/buttoncontrol_provider.dart';


class NewJobPage extends StatefulWidget {
  const NewJobPage({super.key});

  @override
  State<NewJobPage> createState() => _NewJobPageState();
}

class _NewJobPageState extends State<NewJobPage> {
  late TextEditingController subject;
  late TextEditingController message;
  late final ButtonControlProvider buttonControlProvider;

  @override
  void initState() {
    buttonControlProvider =
        Provider.of<ButtonControlProvider>(context, listen: false);

    super.initState();
    subject = TextEditingController(
        text: buttonControlProvider.subjectTextEditingController.text);
    message = TextEditingController(
        text: buttonControlProvider.messageTextEditingController.text);
  }

  @override
  void dispose() {
    subject.dispose();
    message.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //provider sınıfına ulaşmak için nesne oluşturma
    return Scaffold(
        floatingActionButton:
            Provider.of<ButtonControlProvider>(context).buttonIsActive
                ? FloatingActionButton.extended(
                    backgroundColor: Colors.green[900],
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
                                  "Düzce AVM",
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
                                  "Yeşim ÇELİK ",
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
                Column(
                  children: [
                    _buildSubjectTextField(
                      textEditingController: subject,
                      onChanged: (val) {
                        buttonControlProvider.setSubjectText(val);
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    _buildMessageTextField(
                      textEditingController: message,
                      onChanged: (val) {
                        buttonControlProvider.setMessageText(val);
                      },
                    ),
                  ],
                ),
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
        ));
  }

  void _showSuccesAlertDialog(BuildContext context) {
    CoolAlertCustom.successCoolAlert(context);
  }

  Widget _buildMessageTextField(
      {Function(String)? onChanged,
      required TextEditingController textEditingController}) {
    return CustomBorderTextField(
      //provider'a yollanan text(setmessagetext'e yollanıyor)
      onChanged: onChanged,
      textEditingController: textEditingController,
      labelText: "Mesaj",
      hintText: 'Mesajınızı giriniz',
      prefixIcon: Icons.message_rounded,
    );
  }

  Widget _buildSubjectTextField(
      {Function(String)? onChanged,
      required TextEditingController textEditingController}) {
    return CustomBorderTextField(
      onChanged: onChanged,

      textEditingController: textEditingController,
      labelText: "Konu",
      hintText: "Konu giriniz.",
      // width: 350,
      prefixIcon: Icons.subject,
    );
  }
}
