import 'package:flutter/material.dart';
import 'package:my_portfolio2/constants/colors.dart';
import 'package:my_portfolio2/constants/skill_items.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 500,
      ),
      child: Column(
                        children: [
                          //platforms
                          for(int i = 0; i < frameWorks.length; i++)
                          Container(
                            margin: EdgeInsets.only(bottom: 5),
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                              color: CustomColor.bgLight2,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: ListTile(
                              contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                              leading: Image.asset(frameWorks[i]["img"], width: 26,),
                              title: Text(frameWorks[i]["title"]),
      
                            ),
                          ),
                          SizedBox(height: 50,),
                          //skills
                          Wrap(
                            spacing: 10.0,
                            runSpacing: 10.0,
                            alignment: WrapAlignment.center,
                            children: [
                              for(int i = 0; i < skillItems.length; i++)
                                  Chip(
                                    backgroundColor: CustomColor.bgLight2,
                                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                                    label: Text(skillItems[i]["title"]),
                                    avatar: Image.asset(skillItems[i]["img"]),
                                  ),
                            ],
                          )
                        ],
                      ),
    );
  }
}