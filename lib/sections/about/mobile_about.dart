import 'package:flutter/foundation.dart';
import 'package:folio/provider/theme_provider.dart';
import 'package:folio/widget/custom_button.dart';
import 'package:folio/widget/custom_text_heading.dart';
import 'package:provider/provider.dart';
import 'package:universal_html/html.dart' as html;

import 'package:flutter/material.dart';
import 'package:folio/constants.dart';
import 'package:folio/widget/about_me_data.dart';
import 'package:folio/widget/community_button.dart';
import 'package:folio/widget/tech_widget.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widget/adaptive_text.dart';

class AboutMobile extends StatelessWidget {
  final _communityLogoHeight = [60.0, 70.0, 30.0, 70.0];

  AboutMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.04,
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
                          fontSize: height * 0.02,
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




// import 'package:flutter/foundation.dart';
// import 'package:folio/provider/theme_provider.dart';
// import 'package:folio/widget/custom_button.dart';
// import 'package:folio/widget/custom_text_heading.dart';
// import 'package:provider/provider.dart';
// import 'package:universal_html/html.dart' as html;

// import 'package:flutter/material.dart';
// import 'package:folio/constants.dart';
// import 'package:folio/widget/about_me_data.dart';
// import 'package:folio/widget/community_button.dart';
// import 'package:folio/widget/tech_widget.dart';
// import 'package:google_fonts/google_fonts.dart';

// class AboutMobile extends StatelessWidget {
//   final _communityLogoHeight = [60.0, 70.0, 30.0, 70.0];

//   AboutMobile({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final themeProvider = Provider.of<ThemeProvider>(context);
//     double height = MediaQuery.of(context).size.height;
//     double width = MediaQuery.of(context).size.width;

//     return Container(
//       padding: EdgeInsets.symmetric(
//         horizontal: width * 0.05,
//       ),
//       color: themeProvider.lightTheme ? Colors.white : Colors.black,
//       child: Column(
//         children: [
//           const CustomSectionHeading(text: "\nAbout Us"),
//           //const CustomSectionSubHeading(text: "Get to know me :)"),
//           Image.asset(
//             'assets/images/logo.jfif',
//             height: height * 0.27,
//           ),
//           SizedBox(
//             height: height * 0.03,
//           ),
//           // Align(
//           //   alignment: Alignment.centerLeft,
//           //   child: Text(
//           //     "Who am I?",
//           //     style: GoogleFonts.montserrat(
//           //       color: kPrimaryColor,
//           //       fontSize: height * 0.025,
//           //     ),
//           //   ),
//           // ),
//           SizedBox(
//             height: height * 0.028,
//           ),
//           Text(
//             "Blink Consolidate is the one-stop source for acquiring a wide range of IT services with a team of hardworking and skilled professionals to move businesses to the next level. Our value is not just limited to assembling teams, We own and guarantee the successful delivery of your project. Expertise in various business domains allows us to create innovative, and future-proof software solutions of any complexity.",
//             style: GoogleFonts.montserrat(
//               fontSize: height * 0.022,
//               fontWeight: FontWeight.w400,
//               color: themeProvider.lightTheme ? Colors.black : Colors.white,
//             ),
//           ),
//           SizedBox(
//             height: height * 0.02,
//           ),
//           // Text(
//           //   "I'm a Final Year Computer Science student enrolled in COMSATS University, Islamabad. I have been developing mobile apps for over 1.5 years now. I have worked in teams for various startups and helped them in launching their prototypes and got valuable learning experience. I'm an active Google Developer Student Clubs (DSC) lead and also CEO/Founder Flutter Islamabad, Pakistan.",
//           //   style: GoogleFonts.montserrat(
//           //     fontSize: height * 0.018,
//           //     color: Colors.grey[500],
//           //     height: 1.5,
//           //   ),
//           // ),
//           SizedBox(
//             height: height * 0.025,
//           ),
//           Container(
//             decoration: BoxDecoration(
//               border: Border(
//                 bottom: BorderSide(
//                   color: Colors.grey[900]!,
//                   width: 1.0,
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(
//             height: height * 0.015,
//           ),
//           // Align(
//           //   alignment: Alignment.centerLeft,
//           //   child: Text(
//           //     "Technologies I have worked with:",
//           //     style: GoogleFonts.montserrat(
//           //         color: kPrimaryColor, fontSize: height * 0.015),
//           //   ),
//           // ),
//           // Row(
//           //   children: [
//           //     for (int i = 0; i < 4; i++)
//           //       ToolTechWidget(
//           //         techName: kTools[i],
//           //       ),
//           //   ],
//           // ),
//           // Row(
//           //   children: [
//           //     for (int i = 4; i < 8; i++)
//           //       ToolTechWidget(
//           //         techName: kTools[i],
//           //       ),
//           //   ],
//           // ),
//           // SizedBox(
//           //   height: height * 0.015,
//           // ),
//           // Container(
//           //   decoration: BoxDecoration(
//           //     border: Border(
//           //       bottom: BorderSide(
//           //         color: Colors.grey[900]!,
//           //         width: 1.0,
//           //       ),
//           //     ),
//           //   ),
//           // ),
//           // SizedBox(
//           //   height: height * 0.02,
//           // ),
//           // const AboutMeData(
//           //   data: "Name",
//           //   information: "Muhammad Hamza",
//           //   alignment: Alignment.centerLeft,
//           // ),
//           // const AboutMeData(
//           //   data: "Email",
//           //   information: "hamza.6.shakeel@gmail.com",
//           //   alignment: Alignment.centerLeft,
//           // ),
//           // SizedBox(
//           //   height: height * 0.015,
//           // ),
//           // Align(
//           //   alignment: Alignment.centerLeft,
//           //   child: Row(
//           //     children: [
//           //       Padding(
//           //         padding: const EdgeInsets.all(8.0),
//           //         child: OutlinedCustomBtn(
//           //             btnText: "Resume",
//           //             onPressed: () {
//           //               kIsWeb
//           //                   ? html.window.open(
//           //                       'https://drive.google.com/file/d/1FaHIzT9FigDHLx8NlxFIyQfjJTyN9WQ6/view?usp=sharing',
//           //                       "pdf")
//           //                   : launchURL(
//           //                       'https://drive.google.com/file/d/1FaHIzT9FigDHLx8NlxFIyQfjJTyN9WQ6/view?usp=sharing');
//           //             }),
//           //       ),
//           //       Container(
//           //         width: width * 0.2,
//           //         decoration: BoxDecoration(
//           //           border: Border(
//           //             bottom: BorderSide(
//           //               color: Colors.grey[900]!,
//           //               width: 2.0,
//           //             ),
//           //           ),
//           //         ),
//           //       ),
//           //     ],
//           //   ),
//          // ),
//           Row(
//             children: [
//               for (int i = 0; i < kCommunityLogo.length; i++)
//                 CommunityIconBtn(
//                   icon: kCommunityLogo[i],
//                   link: kCommunityLinks[i],
//                   height: _communityLogoHeight[i],
//                 ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
