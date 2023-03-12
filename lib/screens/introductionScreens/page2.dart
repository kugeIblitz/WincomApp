import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../utils/color_utils.dart';

class page2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: hexStringToColor("21E1E1"),
        body:Stack(
          children: <Widget>[
            Center(
              child: Lottie.network(
                  "https://assets7.lottiefiles.com/packages/lf20_lcr4kcr2.json"),
            ),
            const Positioned(
              top: 110,
              left: 40,
              child: Text("With our artistic team",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Century Gothic',
                    fontSize: 30,fontWeight: FontWeight.bold),
              ),
            ),
          ],
        )

    );
  }
}
