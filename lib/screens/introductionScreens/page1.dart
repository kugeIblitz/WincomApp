import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../utils/color_utils.dart';

class page1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: hexStringToColor("21E1E1"),
        body:Stack(
          children: <Widget>[
            Center(
              child: Lottie.network(
                  "https://assets10.lottiefiles.com/packages/lf20_p4q9ra7d.json"),
            ),
            const Positioned(
              top: 170,
              left: 70,
              child: Text("Let us fix it for you",
                style: TextStyle(color: Colors.white,fontFamily: 'Century Gothic',
                    fontSize: 30,fontWeight: FontWeight.bold),
              ),
            ),
          ],
        )

    );
  }
}
