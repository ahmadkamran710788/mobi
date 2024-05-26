import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mobifix/mainPage.dart';
import 'Login_page.dart';
import 'firebase_options.dart';

void main() async {
  // Ensure the binding is initialized
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase with the default options for the current platform
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // Run the app
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo Home Page'),
      ),
      body: Center(
        child: Text('Hello, world!'),
      ),
    );
  }
}
