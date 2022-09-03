// To parse this JSON data, do
//
//     final userData = userDataFromJson(jsonString);

import 'dart:convert';

UserData userDataFromJson(String str) => UserData.fromJson(json.decode(str));

String userDataToJson(UserData data) => json.encode(data.toJson());

class UserData {
  UserData({
    this.vid,
    this.userName,
    this.mobileNumber,
    this.deviceNo,
    this.vehicleNo,
    this.simNo,
    this.vehicle,
    this.installedBy,
    this.trackerType,
    this.dataLimit,
    this.speedLimit,
    this.installedDate,
    this.duePayment,
    this.expiryDate,
    this.grasePeriod,
    this.renewalDays,
  });

  int? vid;
  String? userName;
  String? mobileNumber;
  String? deviceNo;
  String? vehicleNo;
  String? simNo;
  String? vehicle;
  String? installedBy;
  String? trackerType;
  String? dataLimit;
  String? speedLimit;
  String? installedDate;
  String? duePayment;
  String? expiryDate;
  String? grasePeriod;
  String? renewalDays;

  factory UserData.fromJson(Map<String, dynamic> json) => UserData(
        vid: json["vid"],
        userName: json["userName"],
        mobileNumber: json["mobileNumber"],
        deviceNo: json["deviceNo"],
        vehicleNo: json["vehicleNo"],
        simNo: json["simNo"],
        vehicle: json["vehicle"],
        installedBy: json["installedBy"],
        trackerType: json["trackerType"],
        dataLimit: json["dataLimit"],
        speedLimit: json["speedLimit"],
        installedDate: json["installedDate"],
        duePayment: json["duePayment"],
        expiryDate: json["expiryDate"],
        grasePeriod: json["grasePeriod"],
        renewalDays: json["renewalDays"],
      );

  Map<String, dynamic> toJson() => {
        "vid": vid,
        "userName": userName,
        "mobileNumber": mobileNumber,
        "deviceNo": deviceNo,
        "vehicleNo": vehicleNo,
        "simNo": simNo,
        "vehicle": vehicle,
        "installedBy": installedBy,
        "trackerType": trackerType,
        "dataLimit": dataLimit,
        "speedLimit": speedLimit,
        "installedDate": installedDate,
        "duePayment": duePayment,
        "expiryDate": expiryDate,
        "grasePeriod": grasePeriod,
        "renewalDays": renewalDays,
      };
}
