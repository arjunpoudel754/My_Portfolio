import 'package:flutter/material.dart';
import 'package:my_portfolio2/constants/colors.dart';
import 'package:my_portfolio2/utils/project_utils.dart';
import 'package:my_portfolio2/utils/url_launcher_utils.dart';
// import 'dart:js' as js;

class ProjectCardWidget extends StatelessWidget {
  const ProjectCardWidget({
    super.key, 
    required this.project,
  });
  final ProjectUtils project;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 350,
      width: 260,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: CustomColor.bgLight2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // project image
          Image.asset(
            project.image, 
            height: 140,  
            width: 260, 
            fit: BoxFit.cover,
          ),
    
          // title
          Padding(
    
            padding: const EdgeInsets.fromLTRB(10, 15, 12, 12),
            child: Text(project.title,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              color: CustomColor.whitePrimary,
            
              
            ),
            ),
          ),
          //subtitle
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Text(project.subtitle,
            style: const TextStyle(
              fontSize: 12,
              color: CustomColor.whiteSecondary, 
            ),
            ),
          ),
    
          Spacer(),
          //footer
          Container(
            color: CustomColor.bgLight1,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Row(
              children: [
                const Text("Available on: ", 
                style: TextStyle(
                  color: CustomColor.yellowSecondary,
                  fontSize: 10,
                ),
                ),
                Spacer(),

                // github link
                if(project.githubLink != null)
                InkWell(
                    onTap: (){
                      final link = project.githubLink;

                      if (link != null && link.isNotEmpty) {
                        openUrl(link);
                      }
                    },
                    child: Image.asset("assets/github.png", width: 20,),
                  ),
                
                // Web Link
                if(project.webLink != null)
                Padding(
                  padding: const EdgeInsets.only(left: 6),
                  child: InkWell(
                    onTap: (){
                      final link = project.webLink;

                      if (link != null && link.isNotEmpty) {
                        openUrl(link);
                      }
                    },
                    child: Image.asset("assets/web_icon.png", width: 20,),
                  ),
                ),

                // ios link
                if(project.iosLink != null)
                Padding(
                  padding: const EdgeInsets.only(left: 6),
                  child: InkWell(
                    onTap: (){
                      final link = project.iosLink;

                      if (link != null && link.isNotEmpty) {
                        openUrl(link);
                      }
                    },
                    child: Image.asset("assets/ios_icon.png", width: 20,),
                  ),
                ),

                // android link
                if(project.androidLink != null)
                Padding(
                  padding: const EdgeInsets.only(left: 6),
                  child: InkWell(
                    onTap: (){
                      final link = project.androidLink;

                      if (link != null && link.isNotEmpty) {
                        openUrl(link);
                      }
                    },
                    child: Image.asset("assets/android_icon.png", width: 20,),
                  ),
                ),
              
              ],
            ),
          )
        ],
      ),
    );
  }
}