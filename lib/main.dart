import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:wincomfunctions/reusable_widgets/questionPaperController.dart';
import 'package:wincomfunctions/screens/auth.dart';
import 'package:wincomfunctions/screens/introductionScreen.dart';
import 'package:wincomfunctions/screens/services/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:native_notify/native_notify.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  Get.put(QuestionPaperController());
  Get.put(FirebaseStorageService());
  WidgetsFlutterBinding.ensureInitialized();
  NativeNotify.initialize(2469, 'mmOjyjW66ZGs9H3ZjkxMDz');
  await Firebase.initializeApp();

  final prefs = await SharedPreferences.getInstance();
  final showHome = prefs.getBool('showHome') ?? false;
  runApp(MyApp(showHome: showHome));
}

class MyApp extends StatelessWidget {
  final bool showHome;
  const MyApp({
    Key? key,
    required this.showHome,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: showHome ?const AuthPage() : const Intro());
  }
}
