import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uber_clone_driver/constants.dart';
import 'package:uber_clone_driver/screens/carinfo_screen.dart';


class SignupScree extends StatefulWidget {
  const SignupScree({Key? key}) : super(key: key);

  @override
  _SignupScreeState createState() => _SignupScreeState();
}

class _SignupScreeState extends State<SignupScree> {

  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController phoneTextEditingController = TextEditingController();
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

                const Text('Register As a Driver', style: TextStyle(color: Colors.grey,
                    fontWeight: FontWeight.bold, fontSize: 26),
                ),

                TextField(
                  controller: nameTextEditingController,
                  style: const TextStyle(color: Colors.grey),
                  decoration: kNormalTextInputDecoration.copyWith(labelText: 'Name',
                  hintText: 'Name')
                ),

                TextField(
                    controller: emailTextEditingController,
                    keyboardType: TextInputType.emailAddress,
                    style: const TextStyle(color: Colors.grey),
                    decoration: kNormalTextInputDecoration.copyWith(labelText: 'Email Address',
                        hintText: 'Email Address')
                ),

                TextField(
                    controller: phoneTextEditingController,
                    keyboardType: TextInputType.phone,
                    style: const TextStyle(color: Colors.grey),
                    decoration: kNormalTextInputDecoration.copyWith(labelText: 'Phone Number',
                        hintText: 'Phone Number')
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
                    child: const Text('Create Account', style: TextStyle(fontSize: 16,
                        color: Colors.black54)),
                    onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => const CarInfoScreen()));
                      })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
