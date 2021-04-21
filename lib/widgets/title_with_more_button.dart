import 'package:flutter/material.dart';
import 'package:tree_shop_ui/const/constants.dart';

class TitleWithMoreButton extends StatelessWidget {
  final String title;
  final Function onPressed;
  const TitleWithMoreButton({
    this.title,
    this.onPressed,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitleWIthCustomLine(
            title: title,
          ),
          Spacer(),
          FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: kPrimaryCOlor,
            onPressed: () {},
            child: Text("More"),
          )
        ],
      ),
    );
  }
}

class TitleWIthCustomLine extends StatelessWidget {
  final String title;
  const TitleWIthCustomLine({
    this.title,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 3),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              margin: EdgeInsets.only(right: kDefaultPadding / 3),
              height: 7,
              color: kPrimaryCOlor.withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}
