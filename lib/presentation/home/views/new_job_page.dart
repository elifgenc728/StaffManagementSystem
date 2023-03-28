import 'package:flutter/material.dart';
import 'package:mia_support_system/presentation/home/views/detail_page.dart';
import 'package:mia_support_system/presentation/viewModel/buttoncontrol_provider.dart';
import 'package:provider/provider.dart';
import '../../widget/custom_chipwidget.dart';
import '../../widget/custom_cool_alert.dart';

class NewJobPage extends StatefulWidget {
  const NewJobPage({super.key});

  @override
  State<NewJobPage> createState() => _NewJobPageState();
}

class _NewJobPageState extends State<NewJobPage> {
  TextEditingController? _subjectTextEditingController;
  TextEditingController? _messageTextEditingController;

  @override
  void initState() {
    final buttonControlProvider =
        Provider.of<ButtonControlProvider>(context, listen: false);
    super.initState();
    _subjectTextEditingController = TextEditingController(
        text: buttonControlProvider.subjectTextEditingController.text);
    _messageTextEditingController = TextEditingController(
        text: buttonControlProvider.messageTextEditingController.text);
  }

  @override
  void dispose() {
    _subjectTextEditingController?.dispose();
    _messageTextEditingController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ButtonControlProvider buttonControlProvider =
        Provider.of<ButtonControlProvider>(context);

    //provider sınıfına ulaşmak için nesne oluşturma
    return Scaffold(
        floatingActionButton: buttonControlProvider.buttonIsActive
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
                _buildSubjectTextField(buttonControlProvider),
                SizedBox(
                  height: 15,
                ),
                _buildMessageTextField(buttonControlProvider),
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

  CustomBorderTextField _buildMessageTextField(buttonControlProvider) {
    return CustomBorderTextField(
      //provider'a yollanan text(setmessagetext'e yollanıyor)
      onChanged: (value) => buttonControlProvider.setMessageText(value),
      textEditingController: _messageTextEditingController,
      labelText: "Mesaj",
      hintText: 'Mesajınızı giriniz',
      prefixIcon: Icons.message_rounded,
    );
  }

  CustomBorderTextField _buildSubjectTextField(buttonControlProvider) {
    return CustomBorderTextField(
      onChanged: (value) => buttonControlProvider.setSubjectText(value),

      textEditingController: _subjectTextEditingController,
      labelText: "Konu",
      hintText: "Konu giriniz.",
      // width: 350,
      prefixIcon: Icons.subject,
    );
  }
}
