import 'package:flutter/material.dart';
import 'package:uber_clone_driver/global/global.dart';
import 'package:uber_clone_driver/screens/mysplash_screen.dart';

class ProfileTabScreen extends StatefulWidget {
  const ProfileTabScreen({Key? key}) : super(key: key);

  @override
  _ProfileTabScreenState createState() => _ProfileTabScreenState();
}

class _ProfileTabScreenState extends State<ProfileTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: ElevatedButton(
        child: const Text('Sign Out'),
        onPressed: () {
          firebaseAuth.signOut();

          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const MySplashScreen()));
        },
      ),
    );
  }
}
