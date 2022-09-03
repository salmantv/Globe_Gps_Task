import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:gps_project/app/data/model.dart';

class HomeController extends GetxController {
  Future<List<UserData>> fetchingdata() async {
    try {
      final dio = Dio();
      final apiUrl =
          "http://globalgps.in:8089/api/v1/Vehicle/ExpiredVehicles/18/2025-12-31";
      var response = await dio.get(apiUrl);
      if (response.statusCode == 200) {
        Iterable list = await response.data;
        return list.map((element) => UserData.fromJson(element)).toList();
      }
    } catch (e) {
      Get.snackbar("Error ", e.toString());
    }
    return <UserData>[];
  }
}
