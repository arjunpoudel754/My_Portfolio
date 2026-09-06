import 'package:flutter/material.dart';
import 'package:my_portfolio2/constants/colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                width: double.maxFinite,
                alignment: Alignment.center,
                child: Text("Made by Soe Myint using FLutter.",
                style: TextStyle(
                  color: CustomColor.whiteSecondary,
                  fontWeight: FontWeight.w400,
                ),), 
              );
  }
}