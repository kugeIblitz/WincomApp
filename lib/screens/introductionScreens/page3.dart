import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../utils/color_utils.dart';

class page3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: hexStringToColor("21E1E1"),
        body:Stack(
          children: <Widget>[
            Center(
              child: Lottie.network(
                  "https://assets8.lottiefiles.com/packages/lf20_ihxIYc.json"),
            ),
            const Positioned(
              top: 150,
              left: 40,
              child: Text("Your dreams are real",
                style: TextStyle(color: Colors.white,fontFamily: 'Century Gothic',
                    fontSize: 30,fontWeight: FontWeight.bold),
              ),
            ),
          ],
        )

    );
  }
}



