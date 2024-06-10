import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'firebase_options.dart';
import 'screens/singinscreen.dart';
import 'screens/homescreen.dart';
import 'screens/signupscreen.dart';
import 'screens/QuestionsPage.dart';
import 'package:quizapplicationnew/widget/category.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Sign In Demo',
      home: LoginScreen(),
      routes: {
        '/home': (context) => CategoryScreen(),
        '/signup': (context) => SignupScreen(),
        // Add route to SignupScreen
      },
    );
  }
}
