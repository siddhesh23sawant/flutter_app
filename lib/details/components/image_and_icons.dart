import 'dart:math';

import 'package:ask_smart_home/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ask_smart_home/constants.dart';
import 'icon_card.dart';

class ImageAndIcons extends StatelessWidget {

  const ImageAndIcons({
    Key key,
    @required this.room, this.size, this.image,
  }) : super(key: key);

  final String room;
  final Size size;
  final String image;



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding  * 2),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: <Widget>[
            Expanded(

              child: Padding(
                padding:
                const EdgeInsets.symmetric(vertical: kDefaultPadding * 3, ),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        padding:
                        EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        icon: Image.asset("asset/icons/left-arrow.png"),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) => HomeScreen()
                          ));
                        }),
                    ),
                    Spacer(),
                    IconCard1(room: room,
                        icon: "asset/icons/light.png"),
                    Spacer(),
                    IconCard2(room: room,
                        icon: "asset/icons/light.png"),
                    Spacer(),
                    IconCard3(room: room,
                        icon: "asset/icons/light.png"),
                    Spacer(),
                    IconCard4(room: room,
                        icon: "asset/icons/light.png"),
                    ],
                ),
              ),
            ),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              //-- i need to change alignment
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(55),
                  bottomLeft: Radius.circular(55),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 60,
                    color: kPrimaryColor.withOpacity(0.29),
                  ),
                ],
                image: DecorationImage(
                    alignment: Alignment.center,
                    fit: BoxFit.cover,
                    image: AssetImage(image)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}