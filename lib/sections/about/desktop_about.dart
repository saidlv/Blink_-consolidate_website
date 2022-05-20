// ignore_for_file: unused_import, unused_field

import 'package:flutter/material.dart';
import 'package:folio/provider/theme_provider.dart';
import 'package:folio/widget/about_me_data.dart';
import 'package:folio/widget/adaptive_text.dart';
import 'package:folio/widget/community_button.dart';
import 'package:folio/widget/custom_button.dart';
import 'package:folio/widget/custom_text_heading.dart';
import 'package:folio/widget/tech_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:universal_html/html.dart' as html;

class AboutDesktop extends StatelessWidget {
  final _communityLogoHeight = [60.0, 70.0, 30.0, 70.0];

  AboutDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.07,
      ),
      color: themeProvider.lightTheme ? Colors.white : Colors.black,
      child: Column(
        children: [
          const CustomSectionHeading(text: "\nAbout Us "),
          // const CustomSectionSubHeading(text: "Get to know me :)"),
          const SizedBox(height: 30.0),
          Row(
            children: [
              Expanded(
                flex: width < 1230 ? 2 : 1,
                child: Container(
                  padding: EdgeInsets.only(left: width < 1230 ? 25.0 : 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AdaptiveText(
                        "Blink Consolidate is the one-stop source for acquiring a wide range of IT services with a team of hardworking and skilled professionals to move businesses to the next level.Our value is not just limited to assembling teams, We own and guarantee the successful delivery of your project.Expertise in various business domains allows us to create innovative, and future-proof software solutions of any complexity.",
                        style: GoogleFonts.montserrat(
                          fontSize: height * 0.03,
                          color:
                              //Colors.black,
                              Colors.grey[500],
                          height: 2.0,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.025,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.grey[800]!,
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:folio/constants.dart';
// import 'package:folio/provider/theme_provider.dart';
// import 'package:folio/widget/about_me_data.dart';
// import 'package:folio/widget/adaptive_text.dart';
// import 'package:folio/widget/community_button.dart';
// import 'package:folio/widget/custom_button.dart';
// import 'package:folio/widget/custom_text_heading.dart';
// import 'package:folio/widget/tech_widget.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';

// import 'package:universal_html/html.dart' as html;

// class AboutDesktop extends StatelessWidget {
//   final _communityLogoHeight = [60.0, 70.0, 30.0, 70.0];

//   AboutDesktop({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final themeProvider = Provider.of<ThemeProvider>(context);
//     double height = MediaQuery.of(context).size.height;
//     double width = MediaQuery.of(context).size.width;

//     return Container(
//       padding: EdgeInsets.symmetric(
//         horizontal: width * 0.02,
//       ),
//       color: themeProvider.lightTheme ? Colors.white : Colors.black,
//       child: Column(
//         children: [
//           const CustomSectionHeading(text: "\nAbout "),
//           // const CustomSectionSubHeading(text: "Get to know me :)"),
//           const SizedBox(height: 30.0),
//           Row(
//             children: [
//               Expanded(
//                 flex: width < 1230 ? 2 : 1,
//                 child: Container(
//                   padding: EdgeInsets.only(left: width < 1230 ? 25.0 : 0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       AdaptiveText(
//                         "Blink Consolidate is the one-stop source for acquiring a wide range of IT services with a team of hardworking and skilled professionals to move businesses to the next level. Our value is not just limited to assembling teams, We own and guarantee the successful delivery of your project. Expertise in various business domains allows us to create innovative, and future-proof software solutions of any complexity.",
//                         style: GoogleFonts.montserrat(
//                           fontSize: height * 0.02,
//                           color:
//                               //Colors.black,
//                               Colors.grey[500],
//                           height: 2.0,
//                         ),
//                       ),
//                       SizedBox(
//                         height: height * 0.025,
//                       ),
//                       Container(
//                         decoration: BoxDecoration(
//                           border: Border(
//                             bottom: BorderSide(
//                               color: Colors.grey[800]!,
//                               width: 2.0,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
