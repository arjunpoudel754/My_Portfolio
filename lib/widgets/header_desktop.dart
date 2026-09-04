import 'package:flutter/material.dart';
import 'package:my_portfolio2/constants/colors.dart';
import 'package:my_portfolio2/constants/nav_items.dart';
import 'package:my_portfolio2/styles/style.dart';
import 'package:my_portfolio2/widgets/site_logo.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            height: 50,
            width: double.maxFinite,
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            decoration: kHeaderDecoration,
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                 SiteLogo(
                  onTap: (){
                    
                  },
                 ),
                 const Spacer(),
                 for(int i = 0; i < navTitles.length; i++)
                 Padding(
                   padding: EdgeInsets.only(right: 20),
                   child: TextButton(
                    onPressed: (){}, 
                    child: Text(navTitles[i],
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: CustomColor.whitePrimary,
                    ),)),
                 ),
                 
              ],
            ),
          );
  }
}