import 'package:flutter/material.dart';
import 'package:uber_clone_driver/screens/signup_screen.dart';

import '../constants.dart';
import 'carinfo_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset('images/logo1.png'),
                ),
                const SizedBox(height: 10),

                const Text('Login As a Driver', style: TextStyle(color: Colors.grey,
                    fontWeight: FontWeight.bold, fontSize: 26),
                ),

                TextField(
                    controller: emailTextEditingController,
                    keyboardType: TextInputType.emailAddress,
                    style: const TextStyle(color: Colors.grey),
                    decoration: kNormalTextInputDecoration.copyWith(labelText: 'Email Address',
                        hintText: 'Email Address')
                ),

                TextField(
                    controller: passwordTextEditingController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    style: const TextStyle(color: Colors.grey),
                    decoration: kNormalTextInputDecoration.copyWith(labelText: 'Password',
                        hintText: 'Password')
                ),

                const SizedBox(height: 20),

                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.lightGreenAccent
                    ),
                    child: const Text('Login', style: TextStyle(fontSize: 16,
                        color: Colors.black54)),
                    onPressed: () {

                    }),

                TextButton(
                  child: const Text('Don\'t have an account yet. Sign Up Here', style: TextStyle(
                    color: Colors.grey
                  ),),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>
                    const SignupScree()));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
