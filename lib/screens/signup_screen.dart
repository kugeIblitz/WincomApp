import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:wincomfunctions/reusable_widgets/reusable_widget.dart';
import 'package:wincomfunctions/screens/home_screen.dart';
import 'package:wincomfunctions/screens/signin_screen.dart';
import 'package:wincomfunctions/utils/color_utils.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();
  TextEditingController _phoneNumberController = TextEditingController();
  Future signInfn()async{
    try
      {await  FirebaseAuth.instance.createUserWithEmailAndPassword(
                          email: _emailTextController.text,
                          password: _passwordTextController.text);}
                 on FirebaseAuthException catch(e){
                   if (e.code == 'user-not-found') {
    print('No user found for that email.');
  } else if (e.code == 'wrong-password') {
    print('Wrong password provided for that user.');
  }
                 }
                    addUserDetails(
                      _userNameTextController.text.trim(),
                      _emailTextController.text.trim(),
                      int.parse(_phoneNumberController.text.trim()),
                    );
             
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Sign Up",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            hexStringToColor("21E1E1"),
            hexStringToColor("21E1E1"),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: SingleChildScrollView(
              child: Padding(
            padding:  const EdgeInsets.fromLTRB(20, 120, 20, 0),
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter UserName", Icons.person_outline, false,
                    _userNameTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter Email Id", Icons.email_outlined, false,
                    _emailTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter Password", Icons.lock_outlined, true,
                    _passwordTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter Phone Number", Icons.phone_outlined,
                    false, _phoneNumberController),
                const SizedBox(
                  height: 20,
                ),
                firebaseUIButton(context, "Sign Up", () {
                 
                })
              ],
            ),
          ))),
    );
  }

  Future addUserDetails(String UserName, String Email, int PhoneNumber) async {
    await FirebaseFirestore.instance.collection('users').add({
      'UserName': UserName,
      'Email': Email,
      'PhoneNumber': PhoneNumber,
    });
  }
}
