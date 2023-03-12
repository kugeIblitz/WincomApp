import 'package:flutter/material.dart';
import '../utils/color_utils.dart';
import 'emailForm.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({Key? key}) : super(key: key);

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
              SizedBox(
                width: double.infinity,
                height: 400,
                child: Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: const Image(
                    image: AssetImage('assets/images/digitalPP.jpg'),
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
                          text: "Printing on canvas, vinyl, and tarpaulin "
                              "We can print on a variety of media,\n"
                              " allowing for interior and outdoor exhibitions. "
                              "Additionally, the eco-friendly latex-based ink\n"
                              "used is 3 years UV-resistant.\n\n",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontFamily: 'Century Gothic'),
                        ),
                        TextSpan(
                            text: "-Stand dressing\n"
                                "-Shop windows and facades\n"
                                "-The entrance hall of a company\n"
                                "-Interior decoration and decals",
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
                  child: const Text("REQUEST NOW?"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const EmailForm())),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
