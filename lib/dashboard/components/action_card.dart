import 'package:flutter/material.dart';

class DashboardActionCard extends StatelessWidget {
  String assetImageFileName;
  String cardTitle;
  dynamic backgroundColor;
  DashboardActionCard(
      {Key? key,
      required this.cardTitle,
      required this.assetImageFileName,
      required this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: const EdgeInsets.all(5),
      child: InkWell(
        onTap: () {},
        child: Card(
          color: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(9),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 70,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(bottom: 10),
                child: Image.asset("assets/images/$assetImageFileName"),
              ),
              Text(cardTitle),
            ],
          ),
        ),
      ),
    );
  }
}
