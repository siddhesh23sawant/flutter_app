import 'package:ask_smart_home/SlideBar/SlideBar.dart';
import 'package:flutter/material.dart';
import 'package:ask_smart_home/body.dart';
import 'package:ask_smart_home/constants.dart';

import 'constants.dart';
import 'my_bottom_navigation_bar.dart';

void main() {

  runApp(MyBase());

}    // TODO: implement build


class MyBase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // debugShowCheckedModeBanner : false,
        home: HomeScreen(),
    );
  }
}
// appBar
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kPrimaryColor,
      ),
      drawer: SlideBar(),
      body: Body(),
      // bottomNavigationBar: MyBottomNavBar(),
    );
  }
}

//   AppBar buildAppBar(){
//     return AppBar(
// leading: IconButton(
// icon: Icon(Icons.view_headline,
// color: Colors.white),
// iconSize: 30,
// onPressed: (null),
// ),
// centerTitle: true,
// backgroundColor: kPrimaryColor,
//     );
//   }
// }





















