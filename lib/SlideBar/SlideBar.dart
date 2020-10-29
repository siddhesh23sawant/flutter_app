import 'package:ask_smart_home/SlideBar/User_Manuals.dart';
import 'package:ask_smart_home/SlideBar/about.dart';
import 'package:ask_smart_home/SlideBar/settings.dart';
import 'package:ask_smart_home/SlideBar/user_profile.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

// class SlideBar extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//
//       child: Column(
//         children: <Widget>[
//           Container(
//             width: double.infinity,
//             padding: EdgeInsets.all(20),
//             color: kPrimaryColor,
//             child: Center(
//               child: Column(
//                 children: <Widget>[
//                   Container(
//                     width: 100,
//                     height: 100,
//                     margin: EdgeInsets.only(
//                       top: 30,
//                       bottom: 10,
//                     ),
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                         image: DecorationImage(
//                             image: AssetImage(
//                             "asset/images/app_icon.jpeg"),
//                         fit: BoxFit.fill,
//                       ),
//                     ),
//                   ),
//                   Text(
//                     "Ask Smart Home",
//                     style: TextStyle(
//                       fontSize: 22,
//                       color: Colors.white,
//                     ),
//                   ),
//                   Text(
//                     "automation@askforprojects.com",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 14,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           ListTile(
//             leading: Icon(Icons.person),
//             title: Text(
//               "Profile",
//               style: TextStyle(
//                 fontSize: 16,
//                 color: Colors.black,
//               ),
//             ),
//             onTap: () {
//               // Navigator.of(context).pop();
//               // Navigator.of(context).pushNamed(MyHomePage.routeName);
//             },
//           ),
//           ListTile(
//             leading: Icon(Icons.settings),
//             title: Text(
//               "Settings",
//               style: TextStyle(
//                 fontSize: 16,
//                 color: Colors.black,
//               ),
//             ),
//             onTap: () {
//               // Navigator.of(context).pushNamed(MyHomePage.routeName);
//             },
//           ),
//           ListTile(
//             leading: Icon(Icons.info_outline),
//             title: Text(
//               "About",
//               style: TextStyle(
//                 fontSize: 16,
//                 color: Colors.black,
//               ),
//             ),
//             onTap: () {
//               // Navigator.of(context).pushNamed(MyHomePage.routeName);
//             },
//           ),
//           ListTile(
//             leading: Icon(Icons.all_inclusive),
//             title: Text(
//               "App Version",
//               style: TextStyle(
//                 fontSize: 16,
//                 color: Colors.black,
//               ),
//             ),
//             onTap: () {
//               showAboutDialog(
//                   context: context,
//                   applicationVersion: '2.0.0',
//                 applicationName: "Ask Smart Home",
//                 applicationLegalese: "Owner : Smart Sid",
//               );
//
//               // Navigator.of(context).pushNamed(MyHomePage.routeName);
//             },
//           )
//         ],
//       ),
//     );
//   }
// }



class SlideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double win_height;
    double win_width;
    win_height = MediaQuery.of(context).size.height;
    win_width = MediaQuery.of(context).size.width;
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
                  // Colors.purpleAccent,
                  Colors.purpleAccent,
                  // kPrimaryColor,
                  kPrimaryColor,
                ],
              ),
            ),
            child: Container(
                child: Column(children: <Widget>[
                  Material(
                    elevation: 50,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Image.asset(
                        "asset/images/app_icon.jpeg",
                        width: 85,
                        height: 85,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Text(
                      "Ask Smart Home",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  )
                ])),
            // child: Text("This is Drawer"),
          ),
          CustomListTile(Icons.person, 'Profile', () => {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ProfilePage()),),
          }),
          CustomListTile(Icons.settings, 'Settings', () => {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SettingsPage()),),
          }),
          CustomListTile(Icons.book, 'User Manual', () => {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Manual_pdf__Page()),),
          }),
          CustomListTile(Icons.info_outline, 'About', () => {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => AboutPage()),),
          }),
          CustomListTile(Icons.all_inclusive, 'Legal Info', () => {
            // Navigator.of(context).pop(),
            showAboutDialog(
            context: context,
            applicationVersion: '2.0.0',
            applicationName: "Ask Smart Home",
            applicationLegalese: "Owner : Smart Sid",
            ),
          }
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text("Version : 2.0.1"),
          ),
        ],
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  IconData icon;
  String text;
  Function onTap;
  CustomListTile(this.icon, this.text, this.onTap);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
      child: InkWell(
        splashColor: kPrimaryColor,
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                    color: Colors.blueGrey,
                  ))),
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(icon),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, bottom: 3),
                    child: Text(
                      text,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
              Icon(Icons.keyboard_arrow_right),
            ],
          ),
        ),
      ),
    );
  }
}