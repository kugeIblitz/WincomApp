import 'package:flutter/material.dart';

import 'emailForm.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        // hexStringToColor("21E1E1")
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 400,
                child: Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: const Image(
                    image: AssetImage('assets/images/cm.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    text: const TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text:
                              "WinCom assists you in maintaining a social media"
                              "presence so that you can gain more awareness on social networks \n"
                              "(Facebook, LinkedIn, Twitter, Instagram, Tik Tok).\n\n\n",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontFamily: 'Century Gothic'),
                        ),
                        TextSpan(
                            text: "Our community managers\n"
                                "-create,animate, and regulate your online persona.\n\n",
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 16,
                                fontFamily: 'Century Gothic')),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => EmailForm())),
                  child: const Text("REQUEST NOW?"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
