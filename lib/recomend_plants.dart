import 'package:flutter/material.dart';
import 'package:ask_smart_home/constants.dart';
import 'package:ask_smart_home/details/components/details.dart';

class RecomendPlants extends StatelessWidget {
  const RecomendPlants({
    Key key,
  }) : super(key: key);
  final String hall_status='Online';
  final String bed_status='Offline';
  final String kitchen_status='Online';
  // final String hallway_status='Offline';
  final String study_status='Offline';
  final String guest_status='Online';
  final hall_count=0;
  final bed_count=1;
  final kitchen_count=2;
  // final hallway_count=3;
  final study_count=3;
  final guest_count=4;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HallScreen(status: hall_status, count: hall_count,),
                ),
              );},
            child: RecomendPlantCard(
            image: "asset/images/living_room.jpg",
            title: 'hall',
            country: hall_status,
            price: hall_count,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HallScreen(status: hall_status, count: hall_count,),
                ),
              );
            },
          ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BedScreen(status: bed_status, count: bed_count,),
                ),
                );
                },
            child: RecomendPlantCard(
              image: "asset/images/bedroom.jpg",
              title: 'Bed Room',
              country: bed_status,
              price: bed_count,
              press: () {
              Navigator.push(
              context,
              MaterialPageRoute(
              builder: (context) => BedScreen(status: bed_status, count: bed_count,),
                ),
              );
            },
          ),
          ),
              GestureDetector(
                onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(
                builder: (context) => KitchenScreen(status: kitchen_status, count: kitchen_count,),
                ),
                );
                },
                child: RecomendPlantCard(
                  image: "asset/images/kitchen.jpg",
                  title: 'Kitchen',
                  country: kitchen_status,
                  price: kitchen_count,
                  press: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => KitchenScreen(status: kitchen_status, count: kitchen_count,),
                ),
              );
            },
          ),
  ),
          GestureDetector(
          onTap: () {
          Navigator.push(
          context,
          MaterialPageRoute(
          builder: (context) => StudyScreen(status: study_status, count: study_count),
          ),
          );
          },
            child: RecomendPlantCard(
            image: "asset/images/balcony.jpg",
            title: 'Study',
            country: study_status,
            price: study_count,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => StudyScreen(status: study_status, count: study_count),
                ),
              );
            },
          ),
          ),

          GestureDetector(
          onTap: () {
          Navigator.push(
          context,
          MaterialPageRoute(
          builder: (context) => GuestScreen(status: guest_status, count: guest_count,),
          ),
          );
          },
          child: RecomendPlantCard(
            image: "asset/images/kitchen.jpg",
            title: 'Guest',
            country: guest_status,
            price: guest_count,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => GuestScreen(status: guest_status, count: guest_count,),
                ),
              );
            },
          ),
          ),
        ],
      ),
    );
  }
}

class RecomendPlantCard extends StatelessWidget {
  const RecomendPlantCard({
    Key key,
    this.image,
    this.title,
    this.country,
    this.price,
    this.press,
  }) : super(key: key);

  final String image, title, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          left: kDefaultPadding,
          right: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding// * 2.5
      ),
      width: size.width * 0.80,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
              onTap: press,
              child: Container(
                padding: EdgeInsets.all(kDefaultPadding / 2),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: kPrimaryColor.withOpacity(0.23))
                    ]),
                child: Row(
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: "$title\n".toUpperCase(),
                              style: Theme.of(context).textTheme.button),
                          TextSpan(
                            text: "$country".toUpperCase(),
                            style: TextStyle(
                              color: kPrimaryColor.withOpacity(0.5),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Text(
                      '$price',
                      style: Theme.of(context)
                          .textTheme
                          .button
                          .copyWith(color: kPrimaryColor),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
