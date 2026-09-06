import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
import 'package:my_portfolio2/constants/colors.dart';
import 'package:my_portfolio2/constants/sizes.dart';
import 'package:my_portfolio2/widgets/contact_section.dart';
import 'package:my_portfolio2/widgets/drawer_mobile.dart';
import 'package:my_portfolio2/widgets/footer.dart';
import 'package:my_portfolio2/widgets/header_desktop.dart';
import 'package:my_portfolio2/widgets/header_mobile.dart';
import 'package:my_portfolio2/widgets/main_desktop.dart';
import 'package:my_portfolio2/widgets/main_mobile.dart';
import 'package:my_portfolio2/widgets/project_section.dart';
import 'package:my_portfolio2/widgets/skills_desktop.dart';
import 'package:my_portfolio2/widgets/skills_mobile.dart';
import 'dart:js_interop';

@JS('window.open')
external void openWindow(JSString url, JSString target);

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navbarKeys =  List.generate(4, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
        
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColor.scaffoldBg,
          endDrawer: constraints.maxWidth >= kMinDesktopWidth
              ? null 
              : DrawerMobile(onNavItemTap: (int navIndex){
                  scaffoldKey.currentState?.closeEndDrawer();
                  scrollToSection(navIndex);

                },
                ),
          body:  SingleChildScrollView(
            controller: scrollController,
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                // HEADER
                if(constraints.maxWidth >= kMinDesktopWidth)
                  HeaderDesktop(onNavMenuTap: (int navIndex){
                    scrollToSection(navIndex);
                  },)
                else
                  HeaderMobile(
                    onLogoTap: () {
                      
                    },
                    onMenuTap: () {
                      scaffoldKey.currentState?.openEndDrawer();
                    },
                  ),
                // MAIN
                SizedBox(key: navbarKeys.first,),
                if(constraints.maxWidth >= kMinDesktopWidth)
                  const MainDesktop()
                else
                  const MainMobile(),
            
               // SKILLS
                
                Container(
                  key: navbarKeys[1],                  width: screenWidth,
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

                ProjectSection(key: navbarKeys[2],),
            
                const SizedBox(height: 30,),
                // CONTACT INFO 
                ContactSection(
                  key: navbarKeys[3],
                ),
                const SizedBox(height: 30,),  
                // FOOTER
                const Footer(),
              ],
            ),
          )
        );
      }
    );
  }

  void scrollToSection(int navIndex){
    if(navIndex == 4){
      // open blog page

      return;
    }

    final key = navbarKeys[navIndex];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500), 
      curve: Curves.easeInOut,);
  }  
}

