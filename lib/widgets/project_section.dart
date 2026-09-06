import 'package:flutter/material.dart';
import 'package:my_portfolio2/constants/colors.dart';
import 'package:my_portfolio2/utils/project_utils.dart';
import 'package:my_portfolio2/widgets/project_card.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    
    return Container(
                width: screenWidth,
                padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                child: Column(
                  children: [
                    //work Projects titles
                    const Text("My Projects",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: CustomColor.whitePrimary,
                      ),
                    ),

                    SizedBox(height: 50,),
                    //work projects cards
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: 900,
                      ),
                      child: Wrap(
                        spacing: 25,
                        runSpacing: 25,
                        children: [
                          for(int i = 0; i < myProjects.length; i++)
                          ProjectCardWidget(project: myProjects[i],),
                        ],
                      ),
                    )
                  ],
                ),
              );
  }
}