import 'package:flutter/material.dart';

// import '../../../constants.dart';
import 'package:ask_smart_home/constants.dart';

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    Key key, this.title, this.status, this.count,
  }) : super(key: key);

  final String title, status;
  final count;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
      ),
      child: Row(
        children: <Widget>[
          RichText(
            text: TextSpan(children: [
              TextSpan(
                text: "$title\n",
                style: Theme.of(context).textTheme.headline4.copyWith(
                    color: kTextColor, fontWeight: FontWeight.bold),
              ),
              TextSpan(
                  text: "$status",
                  style: TextStyle(
                    fontSize: 20,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w300,
                  ))
            ]),
          ),
          Spacer(),
          Text("$count",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(color: kPrimaryColor),
          ),
        ],
      ),
    );
  }
}