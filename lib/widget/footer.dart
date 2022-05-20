import 'package:flutter/material.dart';
import 'package:folio/constants.dart';
import 'package:folio/provider/theme_provider.dart';
import 'package:folio/widget/adaptive_text.dart';
import 'package:folio/widget/social_icon.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.fromLTRB(0, height * 0.05, 0, 0),
      height: height * 0.10,
      width: width,
      color: themeProvider.lightTheme ? Colors.white : Colors.grey[900],
      child: Center(
        child: Column(
          
          children: [
            //  SocialMediaIconBtn(
            //             icon: kSocialIcons[],
            //             socialLink: kSocialLinks[i],
            //             height: height * 0.03,
            //             horizontalPadding: 2.0,
            //           )
            Row(
              children:[
                Padding(padding: EdgeInsets.only(left: 15.0)),
 AdaptiveText(
              "Location: ",
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w600,
                color: themeProvider.lightTheme ? Colors.black : Colors.white,
              ),
            )
            ]),
            Row(
             // mainAxisSize: MainAxisSize.min,
              children: [
                Padding(padding: EdgeInsets.only(left: 15.0)),
                InkWell(
                  onTap: () {},
                 // launchURL("https://github.com/mhmzdev/DevFolio"),
                  child: const Text(
                    "Saman Arcade Gulberg 3\n Office#S9 2nd Floor Lahore,\n Punjab 55000, PK,",
                    style: TextStyle(color: Colors.blue),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
