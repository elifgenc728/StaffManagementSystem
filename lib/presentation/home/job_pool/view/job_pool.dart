import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mia_support_system/domain/model/jobs_model.dart';
import 'package:mia_support_system/presentation/home/job_pool/view_model/job_pool_state.dart';
import 'package:mia_support_system/presentation/home/job_pool/view_model/job_pool_view_model.dart';
import 'package:mia_support_system/presentation/widget/custom_popupmenu.dart';
import 'package:mia_support_system/presentation/widget/custom_textbutton.dart';

class JobPool extends StatefulWidget {
  const JobPool({Key? key}) : super(key: key);

  @override
  State<JobPool> createState() => _JobPoolState();
}

class _JobPoolState extends State<JobPool> {
  @override
  void initState() {
    super.initState();
    context.read<JobPoolCubit>().getJobs();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            automaticallyImplyLeading: false,
            title: Text('Genel İş Havuzu'),
          ),
          body: BlocBuilder<JobPoolCubit, JobPoolState>(
            builder: (context, state) {
              if (state is JobPoolLoading) {
                return Center(child: CircularProgressIndicator());
              } else if (state is JobPoolSuccess) {
                return ListView.builder(
                    itemCount: state.jobList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Card(
                          margin: EdgeInsets.zero,
                          elevation: 50,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        state.jobList[index].name ?? "-",
                                        style: TextStyle(fontSize: 18),
                                      ),
                                      Text(
                                        state.jobList[index].subject ?? "",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ]),
                                Divider(
                                  thickness: 2,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.donut_large_sharp,
                                            color: Colors.blue[900], size: 16),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Expanded(
                                          flex: 6,
                                          child: Text(
                                            state.jobList[index].subject ?? " ",
                                            maxLines: 2,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                            flex: 1,
                                            child: CustomPopupMenuWidget()),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          flex: 4,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(
                                                      Icons
                                                          .calendar_today_outlined,
                                                      color: Colors.blue[900],
                                                      size: 16),
                                                  SizedBox(
                                                    width: 8,
                                                  ),
                                                  Text(
                                                    state.jobList[index].date ??
                                                        "",
                                                  ),
                                                  // Text(' - '),
                                                  // Text(
                                                  //   _items[index].saat,
                                                  // ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 4,
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.alarm_rounded,
                                                    size: 16,
                                                    color: Colors.blue[900],
                                                  ),
                                                  SizedBox(
                                                    width: 8,
                                                  ),
                                                  Text(state.jobList[index]
                                                          .time ??
                                                      "")
                                                ],
                                              ),
                                              SizedBox(
                                                height: 4,
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.person,
                                                    size: 16,
                                                    color: Colors.blue[900],
                                                  ),
                                                  SizedBox(
                                                    width: 8,
                                                  ),
                                                  // Text(
                                                  //   _items[index].gonderenKisi,
                                                  //   style: TextStyle(fontSize: 15),
                                                  // ),
                                                  SizedBox(
                                                    width: 12,
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 4,
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons
                                                        .app_registration_rounded,
                                                    color: Colors.blue[900],
                                                    size: 16,
                                                  ),
                                                  SizedBox(
                                                    width: 8,
                                                  ),
                                                  Text('211088'),
                                                  SizedBox(
                                                    width: 245,
                                                  ),
                                                  CustomDetailTextButton(),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    });
              } else if (state is JobPoolError) {
                return Text(state.errorText);
              } else {
                return Container(
                  child: Text("Bir sorun oldu"),
                );
              }
            },
          )),
    );
  }
}
