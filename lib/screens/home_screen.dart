import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:wincomfunctions/screens/reference.dart';

import 'googleAds.dart';
import 'print.dart';
import 'marketing.dart';
import 'socialMedia.dart';
import 'woodMack.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          const SizedBox(height: 100),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               const Text(
                  "Categories",
                  style: TextStyle(
                   
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                      ),
                ),
                GestureDetector(onTap: 
                ()async{
                  await FirebaseAuth.instance.signOut();
                  },
                  
                   child: const Icon(Icons.logout))
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(2),
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const googleAds()),
                    );
                  },
                  child: Card(
                    elevation: 5,
                    margin: const EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Image.asset("assets/images/googleads.png"),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const print()),
                    );
                  },
                  child: Card(
                    elevation: 5,
                    margin: const EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Image.asset("assets/images/Printing.png"),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const marketing()),
                    );
                  },
                  child: Card(
                      elevation: 5,
                      margin: const EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset("assets/images/marketing.png")),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const reference()),
                    );
                  },
                  child: Card(
                    elevation: 5,
                    margin: const EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Image.asset("assets/images/sio.jpg"),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const socialMedia()),
                    );
                  },
                  child: Card(
                    elevation: 5,
                    margin: const EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Image.asset("assets/images/soo.png"),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const woodMack()),
                    );
                  },
                  child: Card(
                    elevation: 5,
                    margin: const EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Image.asset("assets/images/standsEz.png"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
