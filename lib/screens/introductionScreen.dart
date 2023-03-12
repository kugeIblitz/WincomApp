// ignore: file_names
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wincomfunctions/screens/auth.dart';
import 'package:wincomfunctions/screens/introductionScreens/page1.dart';
import 'package:wincomfunctions/screens/signin_screen.dart';
// ignore: depend_on_referenced_packages
import 'package:shared_preferences/shared_preferences.dart';
import 'introductionScreens/page2.dart';
import 'introductionScreens/page3.dart';

class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  final PageController _controller=PageController();
  bool onLastPage=false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Stack(
      children:[
        PageView(
          controller: _controller,
        onPageChanged: (index){
          setState(() {
            onLastPage=(index==2);
          });
        },
        children: [
         page1(),
         page2(),
         page3(),
        ],
      ),
        Container(
          alignment: const Alignment(0,0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //skip
                GestureDetector(
                  onTap:(){
                    _controller.jumpToPage(2);
                      },
                    child: const Text("Skip")

                ),

                //dot indicator
                SmoothPageIndicator(controller: _controller, count: 3),

                //next or done
                onLastPage?
                GestureDetector(
                    onTap:()async{
                      final prefs=await SharedPreferences.getInstance();
                      prefs.setBool('showHome', true);
                      // ignore: use_build_context_synchronously
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context){
                            return const AuthPage();
                          }
                          ),
                      );
                    },
                    child: const Text("Get started"),

                ): GestureDetector(
                  onTap:(){
                    _controller.nextPage(duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn
                    );
                  },
                  child: const Text("Next"),

                ),
              ],
            ))
        ],
      ),


    );
  }
}
