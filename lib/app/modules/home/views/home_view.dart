import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:gps_project/app/data/model.dart';
import 'package:gps_project/app/modules/home/views/widgets/cardwidget.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final apicontroller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    apicontroller.fetchingdata();
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 219, 211, 211),
        appBar: AppBar(
          title: Text("User Details"),
          backgroundColor: Colors.red,
          elevation: 10,
        ),
        body: FutureBuilder<List<UserData>>(
          future: apicontroller.fetchingdata(),
          builder: (BuildContext context, snapshot) {
            if (snapshot.hasData) {
              log(snapshot.data!.first.mobileNumber.toString());
              return Container(
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      if (snapshot.data == null) {
                        return SizedBox();
                      }
                      final data = snapshot.data![index];
                      log(data.installedDate.toString());
                      return Cardwidget(
                        userData: data,
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 30,
                      );
                    },
                    itemCount: snapshot.data!.length),
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ));
  }
}
