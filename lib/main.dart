import 'package:flutter/material.dart';
import 'package:uber_clone_driver/screens/main_screen.dart';
import 'package:uber_clone_driver/screens/mysplash_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MyApp(
      child:const MaterialApp(
          home: MySplashScreen()
  ),
  ),
  );
}

class MyApp extends StatefulWidget {
  final Widget? child;

  MyApp({this.child});

  static void restartApp(BuildContext context) {
    context.findAncestorStateOfType<_MyAppState>()!.restartApp();
  }

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  Key key = UniqueKey();

  void restartApp() {
    setState(() {
      key = UniqueKey();
    });
  }
  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
      key: key,
      child: widget.child!
    );
  }
}
