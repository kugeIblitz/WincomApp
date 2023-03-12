import 'package:flutter/material.dart';
import 'package:wincomfunctions/intro_screens/CommunityPage.dart';

import '../utils/color_utils.dart';
import 'home_screen.dart';
import 'nav.dart';

class socialMedia extends StatefulWidget {
  const socialMedia({Key? key}) : super(key: key);

  @override
  State<socialMedia> createState() => _socialMediaState();
}

class _socialMediaState extends State<socialMedia> {
  final PageController _controller = PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Community Management"),
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
            CommunityPage(),
          ],
        ),
      ]),
    );
  }
}
