import 'package:flutter/material.dart';
import '../utils/color_utils.dart';
import 'emailForm.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({Key? key}) : super(key: key);

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
                  margin: EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Image(
                    image: AssetImage('assets/images/offsetPP.jpg'),
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
                          text: "In both large and small format WINCOM can "
                              "print any kind of stationery.\n"
                              "WINCOM provides the whole range of services "
                              "from design to post-printing support.\n"
                              "for anything you require.\n\n",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Century Gothic',
                              fontSize: 15),
                        ),
                        TextSpan(
                            text: "-Business cards\n"
                                "-Envelopes\n"
                                "-Notepads"
                                "-Flyers\n"
                                "-Posters",
                            style: TextStyle(
                                color: Colors.red,
                                fontFamily: 'Century Gothic',
                                fontSize: 16)),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  child: Text("REQUEST NOW?"),
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
