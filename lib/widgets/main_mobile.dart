import 'package:flutter/material.dart';
import 'package:my_portfolio2/constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenHeight = screenSize.height;
    
    return Container(
                margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                height: screenHeight/1.2,
                padding: EdgeInsets.only(top: 50),
                constraints: BoxConstraints(minHeight: 560.0,),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // avatar img

                    CircleAvatar(
                        radius: MediaQuery.of(context).size.width * 0.2,
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage("assets/my_pic.png"),
                      ),
                    // intro txt
                    SizedBox(height: 80,),
                    const Text("Hi, I'm Soe Myint\nA Flutter Developer",
                        style: TextStyle(
                          fontSize: 24,
                          height: 1.5,

                          fontWeight: FontWeight.bold,
                          color: CustomColor.whitePrimary,
                        ),),
                        const SizedBox(height: 20.0,),
                        
                        // btn
                        SizedBox(
                          width: 200.0,
                          child: ElevatedButton(
                            onPressed: (){}, 
                            style: ElevatedButton.styleFrom(backgroundColor: CustomColor.yellowPrimary,),
                            child:const Text("Get in Touch", style: TextStyle(color: CustomColor.whitePrimary),),
                          ),
                        ),

                    

                  ],
                ),
              );
  }
}