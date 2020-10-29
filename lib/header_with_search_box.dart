import 'package:flutter/material.dart';
import 'constants.dart';



//SearchBoxWithBody
class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox( {
    Key key,
    @required this.size,
  }) :super(key: key);
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding * 2.5),
      height: size.height *0.2,
      // color: Colors.amber,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                left: kDefaultPadding,
                right: kDefaultPadding*2,
                bottom: kDefaultPadding*2),
            height: size.height*0.2 -27,
            decoration: BoxDecoration(color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
            ),
            child: Row(
              children: <Widget>[Text("Smart Home",
                  style: Theme.of(context).textTheme.headline5.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold)
              ),
                Spacer(),
                Image.asset("asset/images/house.png",
                  width: 55,
                  height: 55,
                ),
              ],
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,

              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.30),
                    ),  ],
                ),
                child: TextField(
                  onChanged: (value){},
                  decoration: InputDecoration(
                      hintText: "Search Here",
                      hintStyle: TextStyle(
                        color: kPrimaryColor.withOpacity(0.5),
                      ),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      suffixIcon: Icon(Icons.search,
                        color: Colors.black26,
                      )
                  ),
                ),
              )
          ),
        ],
      ),
    );
  }
}