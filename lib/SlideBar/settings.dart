import 'package:ask_smart_home/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Settings",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.green,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, right: 16),
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(
                  Icons.person,
                  color: Colors.green,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Account",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 10,
            ),
            buildAccountOptionRow(context, "Change password"),
            buildAccountOptionRow(context, "Contact Info"),

            SizedBox(
              height: 40,
            ),
            // Row(
            //   children: [
            //     Icon(
            //       Icons.volume_down,
            //       color: Colors.green,
            //     ),
            //     SizedBox(
            //       width: 8,
            //     ),
            //     Text(
            //       "Notifications",
            //       style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            //     ),
            //   ],
            // ),
            // Divider(
            //   height: 15,
            //   thickness: 2,
            // ),
            // SizedBox(
            //   height: 10,
            // ),
            // buildNotificationOptionRow("New for you", true),
            // buildNotificationOptionRow("Account activity", true),
            // buildNotificationOptionRow("Opportunity", false),
            // SizedBox(
            //   height: 50,
            // ),
            Row(
              children: [
                Icon(
                  Icons.person,
                  color: Colors.green,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Theme",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 10,
            ),
            // Text(
            //   "Primary",
            //   style: TextStyle(fontSize: 18,),
            // ),
            // SizedBox(
            //   height: 22,
            // ),
            Row(
              children: <Widget>[
                Text(
                  "Primary",
                  style: TextStyle(fontSize: 18),
                ),
              Spacer(),
              Container(
                width: 130.0,
                child: MyStatefulWidget(),
              ),
            ],
    ),
        // SingleChildScrollView(
        //   scrollDirection: Axis.horizontal,
        //   child: Row(
        //       children: [
        //           Container(
        //             width: 50.0,
        //             height: 50,
        //             color: Colors.red,
        //           ),
        //         SizedBox(
        //           width: 10,
        //         ),
        //           Container(
        //             width: 50.0,
        //             height: 50,
        //             color: Colors.green,
        //           ),
        //         SizedBox(
        //           width: 10,
        //         ),
        //           Container(
        //             width: 50.0,
        //             height: 50,
        //             color: Colors.blue,
        //           ),
        //         SizedBox(
        //           width: 10,
        //         ),
        //           Container(
        //             width: 50.0,
        //             height: 50,
        //             color: Colors.pink,
        //           ),
        //         SizedBox(
        //           width: 10,
        //         ),
        //           Container(
        //             width: 50.0,
        //             height: 50,
        //             color: Colors.amber,
        //           ),
        //         SizedBox(
        //           width: 10,
        //         ),
        //         Container(
        //           width: 50.0,
        //           height: 50,
        //           color: Colors.purpleAccent,
        //         ),
        //         SizedBox(
        //           width: 10,
        //         ),
        //         Container(
        //           width: 50.0,
        //           height: 50,
        //           color: Colors.lightGreenAccent,
        //         ),
        //         ],
        //       ),
        //     ),
            SizedBox(
              height: 22,
            ),
            // Text(
            //   "Secondary",
            //   style: TextStyle(fontSize: 18,),
            // ),
            // SizedBox(
            //   height: 22,
            // ),
            // SingleChildScrollView(
            //   scrollDirection: Axis.horizontal,
            //   child: Row(
            //     children: [
            //       Container(
            //         width: 50.0,
            //         height: 50,
            //         color: Colors.red,
            //       ),
            //       SizedBox(
            //         width: 10,
            //       ),
            //       Container(
            //         width: 50.0,
            //         height: 50,
            //         color: Colors.red,
            //       ),
            //       SizedBox(
            //         width: 10,
            //       ),
            //       Container(
            //         width: 50.0,
            //         height: 50,
            //         color: Colors.red,
            //       ),
            //       SizedBox(
            //         width: 10,
            //       ),
            //       Container(
            //         width: 50.0,
            //         height: 50,
            //         color: Colors.red,
            //       ),
            //       SizedBox(
            //         width: 10,
            //       ),
            //       Container(
            //         width: 50.0,
            //         height: 50,
            //         color: Colors.red,
            //       ),
            //       SizedBox(
            //         width: 10,
            //       ),
            //       Container(
            //         width: 50.0,
            //         height: 50,
            //         color: Colors.red,
            //       ),
            //       SizedBox(
            //         width: 10,
            //       ),
            //       Container(
            //         width: 50.0,
            //         height: 50,
            //         color: Colors.red,
            //       ),
            //     ],
            //   ),
            // ),
            SizedBox(
              height: 30,
            ),



            Center(
              child: OutlineButton(
                padding: EdgeInsets.symmetric(horizontal: 40),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                onPressed: () {},
                child: Text("SIGN OUT",
                    style: TextStyle(
                        fontSize: 16, letterSpacing: 2.2, color: Colors.black)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row buildNotificationOptionRow(String title, bool isActive) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.grey[600]),
        ),
        Transform.scale(
            scale: 0.7,
            child: CupertinoSwitch(
              value: isActive,
              onChanged: (bool val) {},
            ))
      ],
    );
  }

  GestureDetector buildAccountOptionRow(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(title),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Green"),
                    Text("Blue"),
                    Text("Purple"),
                    Text("Pink"),
                    Text("Yellow"),
                    Text("Crimson"),
                  ],
                ),
                actions: [
                  FlatButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("Close")),
                ],
              );
            });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.grey[600],
              ),
            ),
            Icon(
              Icons.keyboard_arrow_right,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String dropdownValue = 'Default';

  @override
  Widget build(BuildContext context) {
    return Center(child: DropdownButton<String>(
      value: dropdownValue,
      // icon: Icon(Icons.add_circle),
      // iconSize: 24,
      elevation: 16,
      style: TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.black12,
      ),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>['Default', 'Owlblue', 'Harmony', 'Tangy' ,'Dark' , 'Moonlight', 'Lightpurple']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value,
            style: TextStyle(
              fontSize: 18,
              // fontWeight: FontWeight.w400,
              color: Colors.black,
            ),),
        );
      }).toList(),
    ),
    );
  }
}
