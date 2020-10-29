import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ask_smart_home/constants.dart';
import 'package:ask_smart_home/recomend_plants.dart';
import 'package:ask_smart_home/featured_plants.dart';
import 'package:ask_smart_home/header_with_search_box.dart';
import 'package:ask_smart_home/title_with_more_btn.dart';

//SearchBox
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //it enables the scrolling view on small devices
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: "Rooms",
            press: (){},
          ),
          // it will cover 40% of screen size in width for each products/room
        RecomendPlants(),
          // TitleWithMoreBtn(
          //   title: "Featured Rooms",
          //   press: (){},
          // ),

          // FeaturedPlants(),
          //   SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}