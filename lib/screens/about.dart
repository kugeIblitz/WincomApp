// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:wincomfunctions/utils/color_utils.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, 
        children: [
          const SizedBox(height: 100,),
          const Center(
            child: SizedBox(
              width: 300,
              height: 300,
              child: Image(
                image: AssetImage("assets/images/Logo.png" ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(5.0),
            child: Text(
              "WinCom",
              style: TextStyle(
                  fontSize: 27,
                  fontFamily: 'Century Gothic',
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "WINCOM creates customized software solutions,"
              " including dynamic display software, "
              "digital platforms,"
              " and portals for interactive terminals. "
              "All of our solutions are multi-channel compatible, scalable, and adaptable "
              "(web, mobile applications and digital screens).",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Century Gothic',
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
          ),
          TextButton.icon(
            style: TextButton.styleFrom(foregroundColor: Colors.white),
            onPressed: () => print(''),
            icon: const Icon(Icons.phone),
            label: const Text("94 473 801"),
          ),
          TextButton.icon(
            style: TextButton.styleFrom(foregroundColor: Colors.white),
            onPressed: () => print(''),
            icon: const Icon(Icons.email),
            label: const Text("wincomagence@gmail.com"),
          ),
          TextButton.icon(
            style: TextButton.styleFrom(foregroundColor: Colors.white),
            onPressed: () => print(''),
            icon: const Icon(Icons.web),
            label: const Text("www.wincom.tn"),
          ),
        ]),
      ),
    );
  }
}
