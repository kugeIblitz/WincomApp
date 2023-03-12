import 'package:flutter/material.dart';
import 'emailForm.dart';

class MarketingPage extends StatelessWidget {
  const MarketingPage({Key? key}) : super(key: key);

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
                    image: AssetImage('assets/images/marketing.png'),
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
                              "To increase participation, visibility, reputation "
                              "and loyalty in social networks, Our Community\n"
                              "managers create effective Social Media Marketing,"
                              "organic, and sponsored programs.\n"
                              "We develop your best social media strategy.\n\n",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Century Gothic',
                              fontSize: 15),
                        ),
                        TextSpan(
                            text:
                                "-By enhancing the flexibility of your voice across these various platforms \n"
                                "-we also manage your communities from A to Z.\n\n",
                            style: TextStyle(
                                fontFamily: 'Century Gothic',
                                color: Colors.red,
                                fontSize: 16)),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  child: const Text("REQUEST NOW?"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => EmailForm())),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
