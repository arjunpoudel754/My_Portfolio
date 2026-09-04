import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_portfolio2/constants/colors.dart';
import 'package:my_portfolio2/constants/nav_items.dart';
import 'package:my_portfolio2/constants/sizes.dart';
import 'package:my_portfolio2/constants/skill_items.dart';
import 'package:my_portfolio2/styles/style.dart';
import 'package:my_portfolio2/widgets/drawer_mobile.dart';
import 'package:my_portfolio2/widgets/header_desktop.dart';
import 'package:my_portfolio2/widgets/header_mobile.dart';
import 'package:my_portfolio2/widgets/main_desktop.dart';
import 'package:my_portfolio2/widgets/main_mobile.dart';
import 'package:my_portfolio2/widgets/site_logo.dart';
import 'package:my_portfolio2/widgets/skills_desktop.dart';
import 'package:my_portfolio2/widgets/skills_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColor.scaffoldBg,
          endDrawer: constraints.maxWidth >= kMinDesktopWidth? null : const DrawerMobile(),
          body:  ListView(
            scrollDirection: Axis.vertical,
            children: [
              // HEADER
              if(constraints.maxWidth >= kMinDesktopWidth)
                HeaderDesktop()
              else
                HeaderMobile(
                  onLogoTap: () {
                    
                  },
                  onMenuTap: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                ),
              // MAIN
              if(constraints.maxWidth >= kMinDesktopWidth)
                const MainDesktop()
              else
                const MainMobile(),

             // SKILLS
              Container(
                width: screenWidth,
                color: CustomColor.bgLight1,
                padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // title
                    const Text("What I can do",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: CustomColor.whitePrimary,
                      ),
                    ),

                    SizedBox(height: 50,),

                    // skills
                    if(constraints.maxWidth >= kMedDesktopWidth)
                      const SkillsDesktop()
                    else
                      const SkillsMobile(),
                  ],
                ),
              ),

              // PROJECTS
              
              // CONTACT INFO
              
              // FOOTER
              
            ],
          )
        );
      }
    );
  }
}