import 'package:flutter/material.dart';

const kNormalTextInputDecoration = InputDecoration(
  labelText: 'Name',
  hintText: 'Name',
  enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.grey)
  ),
  focusedBorder:  UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.grey)
  ),
  hintStyle: TextStyle(fontSize: 10, color: Colors.grey),
  labelStyle: TextStyle(fontSize: 14, color: Colors.grey),
);