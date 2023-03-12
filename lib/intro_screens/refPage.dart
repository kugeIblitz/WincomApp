import 'package:flutter/material.dart';
import '../utils/color_utils.dart';
import 'emailForm.dart';

class refPage extends StatelessWidget {
  const refPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                child: Image(
                  image: AssetImage('assets/images/seo.jpg'),
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
                        text: "Our SEO specialists have a track record"
                            "of improving your website's exposure in the major\n"
                            "search engines, including Google, YouTube and Bing."
                            "To give you the best opportunity \n"
                            "of being ranked at the top of Google and its competitors\n\n",
                          style: TextStyle(color: Colors.black,fontFamily: 'Century Gothic',
                          fontSize: 14)
                      ),
                      TextSpan(
                          text: "-We build up a rigorous\n"
                              "-Systematic technical-semantic audit\n"
                              "-An SEO roadmap, and monthly follow-up reports.\n\n",
                          style: TextStyle(color: Colors.red,fontFamily: 'Century Gothic',
                          fontSize: 15)
                      ),
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
                onPressed: ()=>Navigator.push(context,MaterialPageRoute(builder: (context) => EmailForm())),
              ),

            ),
          ],
        ),
      ),
    );
  }
}
