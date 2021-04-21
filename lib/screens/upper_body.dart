import 'package:flutter/material.dart';
import '../widgets/widgets.dart';
import 'screens.dart';

class UpperBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreButton(
            title: "Recomendation",
            onPressed: () {},
          ),
          Container(
            width: size.width * 0.4,
            child: Column(
              children: [
                Image.network(
                    "https://images.unsplash.com/photo-1563673346981-eedec7d66487?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
