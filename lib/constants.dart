import 'package:flutter/material.dart';
import 'package:folio/sections/home/home_tab.dart';
import 'package:url_launcher/url_launcher.dart';

// Colors
const Color kPrimaryColor = Color(0xffC0392B);

// Social Media
const kSocialIcons = [
 "https://img.icons8.com/metro/208/ffffff/facebook-new--v2.png",
  // "https://img.icons8.com/ios-glyphs/480/ffffff/instagram-new.png",
  // "https://img.icons8.com/android/480/ffffff/twitter.png",
  "https://img.icons8.com/metro/308/ffffff/linkedin.png",
  // "https://img.icons8.com/material-rounded/384/ffffff/github.png",
  // "https://img.icons8.com/ios-filled/500/ffffff/medium-monogram--v1.png"
];

const kSocialLinks = [
  "https://www.facebook.com/103383758631665/posts/103385448631496/?substory_index=0",
  // "https://instagram.com/mhmzdev",
  // "https://twitter.com/mhmzdev",
  "https://www.linkedin.com/company/blink-c/",
  // "https://github.com/mhmzdev",
  // "https://mhmzdev.medium.com"
];

// URL Launcher
void launchURL(String url) async => await launchUrl(Uri.parse(url))
    ? await launchUrl(Uri.parse(url))
    : throw 'Could not launch $url';

// Community
final kCommunityLogo = [
  'assets/cui.png',
  'assets/flutterIsl.png',
  'assets/dsc.png',
  'assets/st.png'
];

final kCommunityLinks = [
  "https://www.comsats.edu.pk/",
  "https://web.facebook.com/FlutterIslamabadPakistan/",
  "https://dsc.community.dev/comsats-university-islamabad/",
  "https://sastaticket.pk/"
];

// Tools & Tech
final kTools = [
  "Flutter",
  "Dart",
  "Python",
  "Java",
  "C++",
  "HTML",
  "CSS",
  "Bootstrap"
];

// services
final kServicesIcons = [
 "assets/images/mobile1.jfif",
 "assets/images/UI.jpg",
 "assets/images/Marketing.png",
 "assets/images/web.jfif",
 "assets/images/search.png",
//   "assets/services/ui.png",
//   "assets/services/rapid.png",
//   "assets/services/blog.png",
//   "assets/services/open.png",
];

final kServicesTitles = [
  "Mobile App Development",
  "UI/UX Designing",
  "Digital Markiting",
  "Web Development",
  "Search Engine Optimization",
];

final kServicesDescriptions = [
  "Android app development via Flutter\n- Splash Screen\n- Firebase Auth/Cloud\n- REST APIs\n- Maps integration and more...!",
  "Modern UI/UX Designing\n- Adobe XD\n- Mobile & Web designs\n- Interactive UI designs\n- Responsiveness\n- Promo Videos and more..!",
  "Rapid Prototype via Flutter\n- Working MVP\n- Quick & Working prototype",
  "Technical Blog writing\n- Medium blogs\n- Soothing header images\n- SEO friendly\n- Researched topics and more..!",
  "Open source GitHub Projects\n- Awesome README.md\n- Well documented\n- Header images and more...!",
];

// projects
final kProjectsBanner = [
  "assets/images/search.png",
   "assets/images/search.png",
    "assets/images/search.png",
     "assets/images/search.png",
  // "assets/projects/quranB.png",
  // "assets/projects/hereiamB.png",
  // "assets/projects/covidB.png",
];

final kProjectsIcons = [
  "assets/projects/medkit.png",
  "assets/projects/quran.png",
  "assets/projects/hereiam.png",
  "assets/projects/covid.png",
  "assets/projects/messenger.png",
  "assets/projects/flutter.png",
  "assets/projects/earbender.png",
  "assets/projects/java.png",
  "assets/projects/android.png",
  "assets/services/open.png",
];

final kProjectsTitles = [
  "MedKit",
  "The Holy Qur'an",
  "Here I Am",
  "COVID-19",
  "Messenger Chat Head UI",
  "flutter.dev - Flutter Web",
  "Earbender",
  "File Transfer Protocol",
  "My Order",
  "Hidev",
];

final kProjectsDescriptions = [
  "A Phramacy app developed using Flutter powered with Firebase as database with Doctor and Patient panels.",
  "Application of Holy book of Muslims, Al-Qur'an. Developed using Flutter. Powered with live RestAPI given in README.md",
  "Here I am is an Alert app that Sends alert SMS holding your location (Address and Google Maps) to your loved ones.",
  "A live trakcer for COVID19 stats across the Globe and my Home country Pakistan. It uses APIs so the data is live.",
  "Tried to clone the famous Chat Heads by Facebook Messenger using Flutter. Its basically in-app not exactly like the original chat head.",
  "Flutter Official Site clone using Flutter Web. Try the live site here. For the time being its not responsive fully so there might be responsiveness issues.",
  "A concept of Music App developed using Flutter. Having functionality of playing Audio.",
  "A simple GUI based Java application that sends file from Client to Server but not the other way around.",
  "A concept app for self-services at various restaurants now a days. More like a Restaurant Ordering System.",
  "Its my end semester project. The whole design I developed here is an inspiration from my favortie Flutter Developer Marcin Szałek and his blog Fidev."
];

final kProjectsLinks = [
  "https://github.com/mhmzdev/MedKit-Pharmacy-App-Using-Flutter",
  "https://github.com/mhmzdev/The_Holy_Quran_App",
  "https://github.com/mhmzdev/Here-I-Am-Alert-App",
  "https://github.com/mhmzdev/Covid19-Tracker-App",
  "https://github.com/mhmzdev/Messenger-Chat-Head-Flutter-UI",
  "https://github.com/mhmzdev/flutter.dev-Flutter-Web-Clone",
  "https://github.com/mhmzdev/Earbender_Music_App",
  "https://github.com/mhmzdev/FTP_GUI_Java",
  "https://github.com/mhmzdev/My-Order-Resturant-Ordering-System",
  "https://github.com/mhmzdev/Hidev_Web",
];
final mySocialLink=[
  "https://api.whatsapp.com/send?phone=447594612633",
        'HomePage(),',
     'www.gmail.com',
];

// Contact
final kContactIcons = [
  Icons.whatsapp,

  Icons.home,
//IconButton(onPressed: (){}, icon: Icon(Icons.whatsapp)),
  //IconButton(onPressed: (){}, icon: Icon(Icons.whatsapp)),
 // IconButton(onPressed: (){}, icon: Icon(Icons.whatsapp)),
  Icons.mail,
];

final kContactTitles = [
   "Phone",
  "Location",

  "Email",
];

final kContactDetails = [
   "(+92) 346 0159889",
  "Lahore, Pakistan",
 
  "jobs@mhmz.com"
];
