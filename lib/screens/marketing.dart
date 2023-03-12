import 'package:flutter/material.dart';

import '../intro_screens/marketingPage.dart';
import '../utils/color_utils.dart';
import 'home_screen.dart';
import 'nav.dart';

// ignore: camel_case_types
class marketing extends StatefulWidget {
  const marketing({Key? key}) : super(key: key);

  @override
  State<marketing> createState() => _marketingState();
}

// ignore: camel_case_types
class _marketingState extends State<marketing> {
  final PageController _controller = PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Marketing Digital"),
        backgroundColor: hexStringToColor("21E1E1"),
        leading: BackButton(onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const HomeScreen()));
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const nav()));
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
          children: const [MarketingPage()],
        ),
      ]),
    );
  }
}
