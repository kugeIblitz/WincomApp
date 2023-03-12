import 'package:flutter/material.dart';
import 'package:wincomfunctions/intro_screens/refPage.dart';

import '../utils/color_utils.dart';
import 'home_screen.dart';
import 'nav.dart';

class reference extends StatefulWidget {
  const reference({Key? key}) : super(key: key);

  @override
  State<reference> createState() => _referenceState();
}

class _referenceState extends State<reference> {
  final PageController _controller = PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Seo Reference"),
        backgroundColor: hexStringToColor("21E1E1"),
        leading: BackButton(onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) =>const HomeScreen()));
          Navigator.push(
              context, MaterialPageRoute(builder: (context) =>const nav()));
        }),
      ),
      body: Stack(children: [
        PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              onLastPage = (index == 2);
            });
          },
          children: const [
            SingleChildScrollView(child: refPage()),
          ],
        ),
      ]),
    );
  }
}
