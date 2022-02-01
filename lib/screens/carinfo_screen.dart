import 'package:flutter/material.dart';
import 'package:uber_clone_driver/constants.dart';


class CarInfoScreen extends StatefulWidget {
  const CarInfoScreen({Key? key}) : super(key: key);

  @override
  _CarInfoScreenState createState() => _CarInfoScreenState();
}

class _CarInfoScreenState extends State<CarInfoScreen> {

  TextEditingController modelTextEditingController = TextEditingController();
  TextEditingController colorTextEditingController = TextEditingController();
  TextEditingController numberTextEditingController = TextEditingController();

  List<String> carTypeList = ['uber-x', 'uber-go', 'bike'];
  String?selectedCarType;


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

                const Text('Your Car Details', style: TextStyle(color: Colors.grey,
                    fontWeight: FontWeight.bold, fontSize: 26),
                ),

                TextField(
                    controller: numberTextEditingController,
                    style: const TextStyle(color: Colors.grey),
                    decoration: kNormalTextInputDecoration.copyWith(labelText: 'Car Number',
                        hintText: 'Car Number')
                ),

                TextField(
                    controller: modelTextEditingController,
                    style: const TextStyle(color: Colors.grey),
                    decoration: kNormalTextInputDecoration.copyWith(labelText: 'Model',
                        hintText: 'Model')
                ),

                TextField(
                    controller: colorTextEditingController,
                    style: const TextStyle(color: Colors.grey),
                    decoration: kNormalTextInputDecoration.copyWith(labelText: 'Color',
                        hintText: 'Color')
                ),

                DropdownButton(
                  value: selectedCarType,
                  dropdownColor: Colors.black54,
                  hint: const Text('Please choose Car Type', style: TextStyle(
                    color: Colors.grey, fontSize: 14.0
                  ),),
                  items: carTypeList.map((type) {
                    return DropdownMenuItem(child: Text(type, style:
                      const TextStyle(color: Colors.grey),
                    ),
                    value: type
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    setState(() {
                      selectedCarType = newValue.toString();
                    });
                  }),

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
