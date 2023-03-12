import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:wincomfunctions/screens/nav.dart';
import 'package:wincomfunctions/screens/signin_screen.dart';
class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder:(context, snapshot) {
              if (snapshot.connectionState==ConnectionState.waiting){
                return const CircularProgressIndicator();
              }else if(snapshot.hasError){
               return const Center(child: Text("zh"),);
              
              }else if(snapshot.hasData){
                 return const nav();
                }else{return const SignInScreen();}
        } 

      ),
    );
  }
}