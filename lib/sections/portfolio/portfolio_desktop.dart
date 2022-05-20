
import 'package:flutter/material.dart';
import 'package:folio/animations/bottom_animation.dart';
import 'package:folio/widget/custom_button.dart';
import 'package:folio/widget/custom_text_heading.dart';
import 'package:folio/widget/project_card.dart';
import 'package:folio/constants.dart';

class PortfolioDesktop extends StatefulWidget {
  const PortfolioDesktop({Key? key}) : super(key: key);

  @override
  State<PortfolioDesktop> createState() => _PortfolioDesktopState();
}

class _PortfolioDesktopState extends State<PortfolioDesktop> {
  ScrollController scrollController = ScrollController();
  double scrollValue = 0;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.02, vertical: height * 0.02),
      child: Column(
        children: [
          const CustomSectionHeading(text: "\nProject"),
          SizedBox(height: 40,),
          // const CustomSectionSubHeading(
          //     text: "Here are few samples of my previous project :)\n\n"),
          SizedBox(
            height: width > 1200 ? height * 0.45 : width * 0.21,
            child: ListView.separated(
              controller: scrollController,
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return VerticalDivider(
                  color: Colors.transparent,
                  width: width * 0.015,
                );
              },
              itemBuilder: (context, index) {
                return WidgetAnimator(
                  child: ProjectCard(
                    cardWidth: width < 1200 ? width * 0.3 : width * 0.35,
                    cardHeight: width < 1200 ? height * 0.32 : height * 0.1,
                    backImage: kProjectsBanner[index],
                   // projectIcon: kProjectsIcons[index],
                    projectTitle: kProjectsTitles[index],
                    projectDescription: kProjectsDescriptions[index],
                   // projectLink: kProjectsLinks[index],
                  ),
                );
              },
              itemCount: 4,
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Row(
             mainAxisSize: MainAxisSize.min,
           children: [
            //   IconButton(
            //     onPressed: () {
            //       scrollValue -= width * 0.5;
            //       scrollController.animateTo(
            //         scrollValue,
            //         duration: const Duration(milliseconds: 300),
            //         curve: Curves.ease,
            //       );
            //     },
            //     icon: const Icon(Icons.arrow_back),
            //   ),
              // const SizedBox(width: 8.0),
              // OutlinedCustomBtn(
              //   btnText: "See More",
              //   onPressed: () {
              //    // launchURL("https://github.com/mhmzdev");
              //   },
              // ),
              // const SizedBox(width: 8.0),
              // IconButton(
              //   onPressed: () {
              //     scrollValue += width * 0.5;
              //     scrollController.animateTo(
              //       scrollValue,
              //       duration: const Duration(milliseconds: 300),
              //       curve: Curves.ease,
              //     );
              //   },
              //   icon: const Icon(Icons.arrow_forward),
              // ),
            ],
          )
        ],
      ),
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:folio/animations/bottom_animation.dart';
// import 'package:folio/widget/custom_button.dart';
// import 'package:folio/widget/custom_text_heading.dart';
// import 'package:folio/widget/project_card.dart';
// import 'package:folio/constants.dart';

// class PortfolioDesktop extends StatefulWidget {
//   const PortfolioDesktop({Key? key}) : super(key: key);

//   @override
//   State<PortfolioDesktop> createState() => _PortfolioDesktopState();
// }

// class _PortfolioDesktopState extends State<PortfolioDesktop> {
//   ScrollController scrollController = ScrollController();
//   double scrollValue = 0;

//   @override
//   Widget build(BuildContext context) {
//     double height = MediaQuery.of(context).size.height;
//     double width = MediaQuery.of(context).size.width;

//     return Container(
//       padding: EdgeInsets.symmetric(
//           horizontal: width * 0.02, vertical: height * 0.02),
//       child: Column(
//         children: [
//           const CustomSectionHeading(text: "Project",),
//           SizedBox(height: 60,),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Container(height: 200,
//                 width: 300,
                
//                 color: Colors.amber,
//                 child: Image.asset('assets/images/web.jfif',fit: BoxFit.cover,),
//                   ),
//                   Container(height: 200,
//                 width: 300,
                
//                 color: Colors.amber,
//                 child: Image.asset('assets/images/web.jfif',fit: BoxFit.cover,),
//                   ),
//                   Container(height: 200,
//                 width: 300,
                
//                 color: Colors.amber,
//                 child: Image.asset('assets/images/web.jfif',fit: BoxFit.cover,),
//                   ),
//                   Container(height: 200,
//                 width: 300,
                
//                 color: Colors.amber,
//                 child: Image.asset('assets/images/web.jfif',fit: BoxFit.cover,),
//                   ),
//             ],
//           ),
          // ListView(
          //   scrollDirection: Axis.horizontal,
          //   children: [
          //     Container(height: 200,
          //   width: 300,
            
          //   color: Colors.amber,
          //   child: Image.asset('assets/images/web.jfif',fit: BoxFit.cover,),
          //     )
          //   ],
          // ),
          //const CustomSectionSubHeading(
              //text: "Here are few samples of my previous work :)\n\n"),
          // SizedBox(
          //   height: width > 1200 ? height * 0.45 : width * 0.21,
          //   child: ListView.separated(
          //     controller: scrollController,
          //     padding: const EdgeInsets.symmetric(vertical: 20.0),
          //     scrollDirection: Axis.horizontal,
          //     separatorBuilder: (context, index) {
          //       return VerticalDivider(
          //         color: Colors.transparent,
          //         width: width * 0.015,
          //       );
          //     },
          //     itemBuilder: (context, index) {
          //       return WidgetAnimator(
          //         child: ProjectCard(
          //           cardWidth: width < 1200 ? width * 0.3 : width * 0.35,
          //           cardHeight: width < 1200 ? height * 0.32 : height * 0.1,
          //           backImage: kProjectsBanner[index],
          //           projectIcon: kProjectsIcons[index],
          //           projectTitle: kProjectsTitles[index],
          //           projectDescription: kProjectsDescriptions[index],
          //           projectLink: kProjectsLinks[index],
          //         ),
          //       );
          //     },
          //     itemCount: 4,
          //   ),
          // ),
          // SizedBox(
          //   height: height * 0.02,
          // ),
          // Row(
          //   mainAxisSize: MainAxisSize.min,
          //   children: [
          //     IconButton(
          //       onPressed: () {
          //         scrollValue -= width * 0.5;
          //         scrollController.animateTo(
          //           scrollValue,
          //           duration: const Duration(milliseconds: 300),
          //           curve: Curves.ease,
          //         );
          //       },
          //       icon: const Icon(Icons.arrow_back),
          //     ),
              // const SizedBox(width: 8.0),
              // OutlinedCustomBtn(
              //   btnText: "See More",
              //   onPressed: () {
              //     launchURL("https://github.com/mhmzdev");
              //   },
              // ),
          //     const SizedBox(width: 8.0),
          //     IconButton(
          //       onPressed: () {
          //         scrollValue += width * 0.5;
          //         scrollController.animateTo(
          //           scrollValue,
          //           duration: const Duration(milliseconds: 300),
          //           curve: Curves.ease,
          //         );
          //       },
          //       icon: const Icon(Icons.arrow_forward),
          //     ),
          //   ],
          // )
//         ],
//       ),
//     );
//   }
// }
