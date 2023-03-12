import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wincomfunctions/intro_screens/offsetPrint.dart';
import 'package:wincomfunctions/intro_screens/digitalPrint.dart';
import '../utils/color_utils.dart';

import 'home_screen.dart';
import 'nav.dart';

class print extends StatefulWidget {
  const print({Key? key}) : super(key: key);

  @override
  State<print> createState() => _printState();
}

class _printState extends State<print> {
  final PageController _controller = PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PRINT"),
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
              onLastPage = (index == 1);
            });
          },
          children: const [
            IntroPage1(),
            IntroPage2(),
          ],
        ),
        Container(
            alignment: const Alignment(0, 0.95),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                    onTap: () {
                      _controller.jumpToPage(1);
                    },
                    child: const Text('Skip')),
                SmoothPageIndicator(controller: _controller, count: 2),
                onLastPage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => const nav()));
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const nav();
                          }));
                        },
                        child: const Text('Done'),
                      )
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn,
                          );
                        },
                        child: const Text('Next')),
              ],
            )),
      ]),
    );
  }
}
