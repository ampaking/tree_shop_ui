import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tree_shop_ui/screens/screens.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      body: UpperBody(),
    );
  }
}

AppBar buildAppbar() {
  return AppBar(
    elevation: 0,
    leading: IconButton(
      onPressed: () {
        // make some function for this w
      },
      icon: SvgPicture.asset("assets/icons/menu.svg"),
    ),
  );
}
