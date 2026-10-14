import 'package:flutter/material.dart';
import 'package:my_portfolio2/constants/colors.dart';
import 'package:my_portfolio2/constants/intro.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({
    super.key,
    required this.onGetInTouch,
  });

  final VoidCallback onGetInTouch;


  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return  Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                height: screenHeight,
                constraints: BoxConstraints(minHeight: 350.0,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Intro msg
                        Text('$greet,\nI am $name\n$role',
                        style: TextStyle(
                          fontSize: 30,
                          height: 1.5,

                          fontWeight: FontWeight.bold,
                          color: CustomColor.whitePrimary,
                        ),),
                        const SizedBox(height: 15.0,),
                        
                        // btn
                        SizedBox(
                          width: 250,
                          child: ElevatedButton(
                            onPressed: onGetInTouch,
                            style: ElevatedButton.styleFrom(backgroundColor: CustomColor.yellowPrimary,),
                            child:const Text("Get in Touch", style: TextStyle(color: CustomColor.whitePrimary),),
                          ),
                        ),
                      ],
                    ),
                    // Image.asset("assets/my_pic.png", width: screenWidth / 1.5,),
                    CircleAvatar(
                      radius: screenWidth/8,
                      backgroundImage: AssetImage("assets/my_pic.png"),
                      backgroundColor: Colors.transparent,
                    )
                  ],
                ),
              )
              ;
  }

}