// ignore: file_names
import 'package:flutter/material.dart';
import 'package:wincomfunctions/screens/nav.dart';
import '../intro_screens/GoogleAdsPage.dart';
import '../utils/color_utils.dart';
import 'home_screen.dart';

// ignore: camel_case_types
class googleAds extends StatefulWidget {
  const googleAds({Key? key}) : super(key: key);

  @override
  State<googleAds> createState() => _googleAdsState();
}

// ignore: camel_case_types
class _googleAdsState extends State<googleAds> {
  final PageController _controller = PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Google AdSense STRATEGY"),
        backgroundColor: hexStringToColor("21E1E1"),
        leading: BackButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const HomeScreen()));
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const nav()));
          },
        ),
      ),
      body: PageView(
        controller: _controller,
        onPageChanged: (index) {
          setState(() {
            onLastPage = (index == 2);
          });
        },
        children: const [
          SingleChildScrollView(
            child: googleAdsPage(),
          ),
        ],
      ),
    );
  }
}
