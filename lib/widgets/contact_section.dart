import 'package:flutter/material.dart';
import 'package:my_portfolio2/constants/colors.dart';
import 'package:my_portfolio2/constants/sizes.dart';
import 'package:my_portfolio2/constants/sns_link.dart';
import 'package:my_portfolio2/utils/url_launcher_utils.dart';
import 'package:my_portfolio2/widgets/custom_textfield.dart';


class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController subjectController = TextEditingController();
    final TextEditingController messageController = TextEditingController();

    return Container(
                padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                width: double.maxFinite,
                // color: CustomColor.bgLight1,
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
                          return nameEmailFieldDesktop(nameController, subjectController);
                        }

                        else{
                        return nameEmailFieldMobile(nameController, subjectController);
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
                        controller: messageController,
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
                            onPressed: () {
                              composeEmail(
                                context,
                                nameController,
                                subjectController,
                                messageController,
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: CustomColor.yellowPrimary,
                            ),
                            child: const Text(
                              "Get in Touch",
                              style: TextStyle(
                                color: CustomColor.whitePrimary,
                              ),
                            ),
                          ),
                        ),
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
                            openUrl(SnsLink.github);
                          },
                          child: Image.asset("assets/github.png", width: 28,)
                        ),
                        InkWell(
                          onTap: (){
                            openUrl(SnsLink.linkedin);
                          },
                          child: Image.asset("assets/linkedin.png", width: 28,)
                        ),
                        InkWell(
                          onTap: (){
                            openUrl(SnsLink.facebook);
                          },
                          child: Image.asset("assets/facebook.png", width: 28,)
                        ),
                        InkWell(
                          onTap: (){  
                            openUrl(SnsLink.instagram);
                          },
                          child: Image.asset("assets/instagram.png", width: 28,)
                        ),
                        InkWell(
                          onTap: (){
                            openUrl(SnsLink.telegram);
                          },
                          child: Image.asset("assets/telegram.png", width: 28,)
                        ),
                      ],
                    ),

                  ],
                ), 

              );
  }

  Row nameEmailFieldDesktop(TextEditingController nameController, TextEditingController subjectController){
    return Row(
                        children: [
                          Flexible(
                            child: CustomTextfield(
                              controller: nameController ,
                              hintText: "Your Name",
                            )
                          ),
                          const SizedBox(width: 15,),
                          Flexible(
                            child: CustomTextfield(
                              controller: subjectController,
                              hintText: "Enter Subject",
                            )
                          ),
                        ],
                      );
  }

  Column nameEmailFieldMobile(TextEditingController nameController, TextEditingController subjectController) {
    return Column(
                        children: [
                          Flexible(
                            child: CustomTextfield(
                              controller: nameController,
                              hintText: "Your Name",
                            )
                          ),
                          const SizedBox(height: 15.0,),
                          Flexible(
                            child: CustomTextfield(
                              controller: subjectController,
                              hintText: "Your Subject",
                            )
                          ),
                        ],
                      );
  }
}