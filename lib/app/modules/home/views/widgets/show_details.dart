import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Showdetails extends StatelessWidget {
  Showdetails(
      {Key? key,
      required this.data,
      required this.iconData,
      required this.amount})
      : super(key: key);
  final String data;
  final IconData iconData;
  final bool amount;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 20,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            iconData,
            size: 28,
          ),
        ),
        Text(
          amount == true ? "₹ ${data}.0" : data,
          style: TextStyle(
              fontSize: 17, color: Colors.black, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
