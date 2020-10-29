import 'package:flutter/material.dart';
import 'package:ask_smart_home/constants.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: kDefaultPadding * 2,
        right: kDefaultPadding * 2,
      ),
      height: 55,
      decoration :BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          // topLeft: Radius.circular(10),
          // topRight: Radius.circular(10),

        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0 , -10),
            blurRadius: 35,
            color: kPrimaryColor.withOpacity(0.38),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Image.asset("asset/icons/settings.png"),
            onPressed: (){},
          ),
          IconButton(
            icon: Image.asset("asset/icons/home.png"),
            onPressed: (){},
          ),
          IconButton(
            icon: Image.asset("asset/icons/settings.png"),
            onPressed: (){},
          ),
        ],
      ),
    );
  }
}