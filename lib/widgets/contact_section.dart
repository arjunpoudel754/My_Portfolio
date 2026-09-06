import 'package:flutter/material.dart';
import 'package:my_portfolio2/constants/colors.dart';
import 'package:my_portfolio2/constants/sizes.dart';
import 'package:my_portfolio2/constants/sns_link.dart';
import 'package:my_portfolio2/widgets/custom_textfield.dart';
import 'dart:js_interop';

@JS('window.open')
external void openWindow(JSString url, JSString target);
class ContactSection extends StatelessWidget {
  const ContactSection({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Container(
                padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                color: CustomColor.bgLight1,
                child: Column(
                  children: [
                    //title
                    const Text("Get in Touch",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: CustomColor.whitePrimary,
                    ),
                    ),
                    const SizedBox(height: 50,),

                    // Name and Email
                    ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxWidth: 700,
                        maxHeight: 100,
                      ),
                      child: LayoutBuilder(builder: ((context, constraints) {
                        if (constraints.maxWidth >= kMinDesktopWidth) {
                          return nameEmailFieldDesktop();
                        }
                        else{
                        return nameEmailFieldMobile();
                        }
                      }))
                    ),
                    
                    const SizedBox(height: 15,),
                    //message
                    ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxWidth: 700,
                      ),
                      child: CustomTextfield(
                        hintText: "Your Message",
                        maxLines: 10,
                      ),
                    ),

                    const SizedBox(height: 20,),
                    // send button
                    ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxWidth: 700,
                      ),
                      child: SizedBox(
                        width: double.maxFinite,
                        child: ElevatedButton(
                          onPressed: (){}, 
                          style: ElevatedButton.styleFrom(backgroundColor: CustomColor.yellowPrimary,),
                          child: const Text("Get in Touch",
                          style: TextStyle(
                            color: CustomColor.whitePrimary,
                          ),))),
                    ),
                    const SizedBox(height: 30,),
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: 300,
                      ),
                      child: const Divider()),
                    SizedBox(height: 15,),
                    // SNS icon buttons
                    Wrap(
                      spacing: 12,
                      runSpacing: 12,
                      alignment: WrapAlignment.center,
                      children: [
                        InkWell(
                          onTap: (){
                              openWindow(SnsLink.github.toJS, '_blank'.toJS);
                          },
                          child: Image.asset("github.png", width: 28,)
                        ),
                        InkWell(
                          onTap: (){
                              openWindow(SnsLink.linkedin.toJS, '_blank'.toJS);

                          },
                          child: Image.asset("linkedin.png", width: 28,)
                        ),
                        InkWell(
                          onTap: (){
                              openWindow(SnsLink.facebook.toJS, '_blank'.toJS);

                          },
                          child: Image.asset("facebook.png", width: 28,)
                        ),
                        InkWell(
                          onTap: (){
                              openWindow(SnsLink.instagram.toJS, '_blank'.toJS);
                          },
                          child: Image.asset("instagram.png", width: 28,)
                        ),
                        InkWell(
                          onTap: (){
                              openWindow(SnsLink.telegram.toJS, '_blank'.toJS);
                          },
                          child: Image.asset("telegram.png", width: 28,)
                        ),
                      ],
                    ),

                  ],
                ), 

              );
  }

  Row nameEmailFieldDesktop(){
    return Row(
                        children: [
                          Flexible(
                            child: CustomTextfield(
                              hintText: "Your Name",
                            )
                          ),
                          const SizedBox(width: 15,),
                          Flexible(
                            child: CustomTextfield(
                              hintText: "Your Email",
                            )
                          ),
                        ],
                      );
  }

  Column nameEmailFieldMobile() {
    return Column(
                        children: [
                          Flexible(
                            child: CustomTextfield(
                              hintText: "Your Name",
                            )
                          ),
                          const SizedBox(height: 15.0,),
                          Flexible(
                            child: CustomTextfield(
                              hintText: "Your Email",
                            )
                          ),
                        ],
                      );
  }
}