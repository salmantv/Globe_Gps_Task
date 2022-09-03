import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gps_project/app/modules/home/views/widgets/show_details.dart';

import '../../../../data/model.dart';

class Cardwidget extends StatelessWidget {
  const Cardwidget({Key? key, required this.userData}) : super(key: key);
  final UserData userData;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.all(MediaQuery.of(context).size.width / 15),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.380,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          boxShadow: [],
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Showdetails(
              data: userData.userName.toString(),
              iconData: Icons.person,
              amount: false,
            ),
            Showdetails(
              data: userData.vehicleNo.toString(),
              iconData: Icons.pin,
              amount: false,
            ),
            Showdetails(
              data: userData.vehicle.toString(),
              iconData: Icons.local_shipping,
              amount: false,
            ),
            Showdetails(
              data: userData.duePayment.toString(),
              iconData: Icons.payment,
              amount: true,
            ),
            Showdetails(
              data: userData.renewalDays.toString(),
              iconData: Icons.calendar_month_outlined,
              amount: false,
            ),
          ],
        ),
      ),
    );
  }
}
