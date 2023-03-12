import 'package:flutter/material.dart';
import '../utils/color_utils.dart';
import 'emailForm.dart';
import 'package:flutter/services.dart';

class googleAdsPage extends StatelessWidget {
  const googleAdsPage({Key? key}) : super(key: key);

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
                margin: const EdgeInsets.all(10),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                child: const Image(
                  image: AssetImage('assets/images/ads.png'),
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
                        text: "For your Google Ads advertising initiatives, "
                            "Wincom agency extends its multi-lever support.\n"
                            "For a paid referring campaign to be successful,"
                            "the track is a critical factor.\n"
                            "The ideal Google Ads plan is determined\n\n",
                        style:TextStyle(fontSize: 15,color: Colors.black,
                            fontFamily: 'Century Gothic'),
                      ),
                      TextSpan(
                          text: "-By our SEA SEO company based on your goals.\n"
                              "-Our efforts will be concentrated\n"
                              "-On the best campaign monitoring and optimization to increase it.\n",
                          style: TextStyle(color: Colors.red,fontSize: 16,
                              fontFamily: 'Century Gothic')
                      ),
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
                onPressed: ()=>Navigator.push(context,MaterialPageRoute(builder: (context) => const EmailForm())),
                child: const Text("REQUEST NOW?"),
              ),

              ),
          ],
        ),
      ),
    );
  }
}
