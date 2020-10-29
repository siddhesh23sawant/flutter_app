import 'package:ask_smart_home/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'http_req.dart';



class IconCard1 extends StatefulWidget {
  IconCard1({
    Key key, this.title, this.icon, this.room
  }) : super(key: key);

  final String room;
  final String title;
  final String icon;

  @override
  IconCardState1 createState() => IconCardState1(title: title, icon: icon, room: room);
}
class IconCardState1 extends State<IconCard1> {
  IconCardState1({
    Key key, this.title, this.icon, this.room
  }) ;

  var room;
  var title;
  var icon;

  var state = '0';
  var sw;
  var color = Colors.white;
  var counter = 0;

  void _status() {
    setState(() {
      if (room == 'Hall') {
        sw = 'sw1';
      }
      else if (room == 'Bed') {
        sw = 'sw5';
      }
      else if (room == 'Kitchen') {
        sw = 'sw9';
      }
      else if (room == 'Study') {
        sw = 'sw13';
      }
        if (state == '1') {
          state = '0';
          color = Colors.white;
          counter = counter - 1;
          update(sw_num: sw, sw_status: state);
        }
        else if (state == '0') {
          state = '1';
          color = Colors.amber;
          counter = counter + 1;
          update(sw_num: sw, sw_status: state);
        }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Container(
      margin: EdgeInsets.all(10),
      // padding: EdgeInsets.all(kDefaultPadding / 2),
      height: 65,
      width: 65,

      child: RaisedButton(
          color: color,
          // splashColor: kPrimaryColor,
          elevation: 50,
          hoverElevation: 50,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0,),),
          onPressed: _status,
          // print(title);},
          child: Image.asset("asset/icons/light.png", width: 40,),
      ), //Image.asset(icon),
    );
  }
}


class IconCard2 extends StatefulWidget {
  IconCard2({
    Key key, this.title, this.icon, this.room
  }) : super(key: key);

  final String room;
  final String title;
  final String icon;

  @override
  IconCardState2 createState() => IconCardState2(title: title, icon: icon, room: room);
}
class IconCardState2 extends State<IconCard2> {
  IconCardState2({
    Key key, this.title, this.icon, this.room
  }) ;
  var room;
  var title;
  var icon;

  var state = '0';
  var sw;
  var color = Colors.white;
  var counter = 0;

  void _status() {
    setState(() {
      if (room == 'Hall') {
        sw = 'sw2';
      }
      else if (room == 'Bed') {
        sw = 'sw6';
      }
      else if (room == 'Kitchen') {
        sw = 'sw10';
      }
      else if (room == 'Study') {
        sw = 'sw14';
      }
      if (state == '1') {
        state = '0';
        color = Colors.white;
        counter = counter - 1;
        update(sw_num: sw, sw_status: state);
      }
      else if (state == '0') {
        state = '1';
        color = Colors.amber;
        counter = counter + 1;
        update(sw_num: sw, sw_status: state);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(10),
      // padding: EdgeInsets.all(kDefaultPadding / 2),
      height: 65,
      width: 65,
      child: RaisedButton(
        color: color,
        // splashColor: kPrimaryColor,
        elevation: 50,
        hoverElevation: 50,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0,),),
        onPressed: _status,
        child: Image.asset("asset/icons/light.png", width: 40,),
      ),//Image.asset(icon),
    );
  }
}


class IconCard3 extends StatefulWidget {
  IconCard3({
  Key key, this.title, this.icon, this.room
  }) : super(key: key);

  final String room;
  final String title;
  final String icon;

  @override
  IconCardState3 createState() => IconCardState3(title: title, icon: icon, room: room);
}
class IconCardState3 extends State<IconCard3> {
  IconCardState3({
    Key key, this.title, this.icon, this.room
  }) ;
  var room;
  var title;
  var icon;

  var state = '0';
  var sw;
  var color = Colors.white;
  var counter = 0;

  void _status() {
    setState(() {
      if (room == 'Hall') {
        sw = 'sw3';
      }
      else if (room == 'Bed') {
        sw = 'sw7';
      }
      else if (room == 'Kitchen') {
        sw = 'sw11';
      }
      else if (room == 'Balcony') {
        sw = 'sw15';
      }
      if (state == '1') {
        state = '0';
        color = Colors.white;
        counter = counter - 1;
        update(sw_num: sw, sw_status: state);
      }
      else if (state == '0') {
        state = '1';
        color = Colors.amber;
        counter = counter + 1;
        update(sw_num: sw, sw_status: state);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(10),
      // padding: EdgeInsets.all(kDefaultPadding / 2),
      height: 65,
      width: 65,
      child: RaisedButton(
        color: color,
        // splashColor: kPrimaryColor,
        elevation: 50,
        hoverElevation: 50,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0,),),
        onPressed: _status,
        child: Image.asset("asset/icons/light.png", width: 40,),
      ),//Image.asset(icon),
    );
  }
}


class IconCard4 extends StatefulWidget {
  IconCard4({
    Key key, this.title, this.icon, this.room
  }) : super(key: key);

  final String room;
  final String title;
  final String icon;

  @override
  IconCardState4 createState() => IconCardState4(title: title, icon: icon, room: room);
}
class IconCardState4 extends State<IconCard4> {
  IconCardState4({
    Key key, this.title, this.icon, this.room
  }) ;
  var room;
  var title;
  var icon;

  var state = '0';
  var sw;
  var color = Colors.white;
  var counter = 0;

  void _status() {
    setState(() {
      if (room == 'Hall') {
        sw = 'sw4';
      }
      else if (room == 'Bed') {
        sw = 'sw8';
      }
      else if (room == 'Kitchen') {
        sw = 'sw12';
      }
      else if (room == 'Study') {
        sw = 'sw16';
      }
      if (state == '1') {
        state = '0';
        color = Colors.white;
        counter = counter - 1;
        update(sw_num: sw, sw_status: state);
      }
      else if (state == '0') {
        state = '1';
        color = Colors.amber;
        counter = counter + 1;
        update(sw_num: sw, sw_status: state);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(10),
      // padding: EdgeInsets.all(kDefaultPadding / 2),
      height: 65,
      width: 65,
      child: RaisedButton(
        color: color,
        // splashColor: kPrimaryColor,
        elevation: 50,
        hoverElevation: 50,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0,),),
        onPressed: _status,
        child: Image.asset("asset/icons/light.png", width: 40,),
      ),//Image.asset(icon),
    );
  }
}