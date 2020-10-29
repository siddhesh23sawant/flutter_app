import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ask_smart_home/details/components/title_and_price.dart';
import 'image_and_icons.dart';


class HallScreen extends StatelessWidget {
  const HallScreen({
    Key key,  this.status, this.count,
  }) : super(key: key);
  final String status;
  final count;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(
        image: "asset/images/living_room.jpg",
        title: 'Hall',
        status: status,
        count: count,
      ),

    );
  }
}

class BedScreen extends StatelessWidget {
  const BedScreen({
    Key key, this.status, this.count,
  }) : super(key: key);
  final String status;
  final count;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(
        image: "asset/images/bedroom.jpg",
        title: 'Bed',
        status: status,
        count: count,
      ),

    );
  }
}

class KitchenScreen extends StatelessWidget {
  const KitchenScreen({
    Key key, this.status, this.count,
  }) : super(key: key);
  final String status;
  final count;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(
        image: "asset/images/kitchen.jpg",
        title: 'Kitchen',
        status: status,
        count: count,
      ),

    );
  }
}


class StudyScreen extends StatelessWidget {
  const StudyScreen({
    Key key, this.status, this.count,
  }) : super(key: key);
  final String status;
  final count;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(
        image: "asset/images/balcony.jpg",
        title: 'Study',
        status: status,
        count: count,
      ),

    );
  }
}

class HallWayScreen extends StatelessWidget {
  const HallWayScreen({
    Key key, this.status, this.count,
  }) : super(key: key);
  final String status;
  final count;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(
        image: "asset/images/balcony.jpg",
        title: 'Hal',
        status: status,
        count: count,
      ),

    );
  }
}



class GuestScreen extends StatelessWidget {
  const GuestScreen({
    Key key, this.status, this.count,
  }) : super(key: key);
  final String status;
  final count;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(
        image: "asset/images/balcony.jpg",
        title: 'Guest',
        status: status,
        count: count,
      ),

    );
  }
}

class Body extends StatelessWidget {
  const Body({
    Key key,
    this.image,
    this.title,
    this.status,
    this.count,

  }) : super(key: key);

  final String image, title, status;
  final int count;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcons(room: title, size: size, image: image,),
          TitleAndPrice(
            title: title,
            status: status,
            count: count,
          ),
        ],
      ),
    );
  }
}