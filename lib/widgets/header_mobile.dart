import 'package:flutter/material.dart';
import 'package:my_portfolio2/styles/style.dart';
import 'package:my_portfolio2/widgets/site_logo.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key, this.onLogoTap, this.onMenuTap});
  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
            height: 50.0,
            width: double.maxFinite,
            margin: EdgeInsets.fromLTRB(40, 50, 20, 5),
            decoration: kHeaderDecoration,
            child: Row(
              children: [
                SiteLogo(onTap: onLogoTap),
                Spacer(),
                IconButton(onPressed: onMenuTap, icon:const Icon(Icons.menu)),
                const SizedBox(width: 15,),
                
              ],
            ),
          );
  }
}