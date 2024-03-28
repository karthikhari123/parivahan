import 'package:flutter/material.dart';
import 'pages/signup.dart';
import 'pages/resetpass.dart';
import 'pages/role.dart';
import 'pages/login.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  var Firebase;
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Login(),
        '/signup': (context) => Signup(),
        '/role': (context) => Role(),
        '/reset': (context) => ResetPasswordScreen(),
      },
    );
  }
}
