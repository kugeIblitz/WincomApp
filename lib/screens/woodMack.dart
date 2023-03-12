import 'package:flutter/material.dart';
import 'package:wincomfunctions/intro_screens/WoodPage.dart';
import 'package:wincomfunctions/screens/home_screen.dart';

import '../utils/color_utils.dart';

import 'nav.dart';

class woodMack extends StatefulWidget {
  const woodMack({Key? key}) : super(key: key);

  @override
  State<woodMack> createState() => _woodMackState();
}

class _woodMackState extends State<woodMack> {
  final PageController _controller = PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stand Conception"),
        backgroundColor: hexStringToColor("21E1E1"),
        leading: BackButton(onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const HomeScreen()));
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const nav()));
        }),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              PageView(
                controller: _controller,
                onPageChanged: (index) {
                  setState(() {
                    onLastPage = (index == 2);
                  });
                },
                children: const [
                  WoodPage(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
