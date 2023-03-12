import 'package:flutter/material.dart';
import '../utils/color_utils.dart';
import 'emailForm.dart';

class WoodPage extends StatelessWidget {
  const WoodPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // hexStringToColor("21E1E1"),
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SingleChildScrollView(
              child: Container(
                width: double.infinity,
                height: 400,
                child: Card(
                  elevation: 5,
                  margin: EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Image(
                    image: AssetImage('assets/images/stands.jpg'),
                    fit: BoxFit.cover,
                  ),
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
                        text: "WinCom creates custom exhibition stands"
                            "that present your communications and products\n"
                            "using meticulous architecture.WinCom creates your exhibition stand and"
                            "handles the printing and dressing of your project.\n\n\n",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Century Gothic',
                            fontSize: 15),
                      ),
                      TextSpan(
                          text:
                              "for your events, fairs, or office interior décor.\n\n\n",
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
    );
  }
}
