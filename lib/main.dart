import 'package:flutter/material.dart';
import 'package:section4/widgets/tutorBottomNavBar.dart';
import 'package:section4/widgets/tutorBottomSheet.dart';
import 'package:section4/widgets/tutorDrawer.dart';
import 'package:section4/widgets/tutorDropDown.dart';
import 'package:section4/widgets/tutorTabBar.dart';
import 'package:section4/widgets/tutorTextField.dart';
import 'widgets/tutordialogueBox.dart';
import './widgets/tutorSnackbar.dart';

void main() {
  runApp(ziraApp());
}

class ziraApp extends StatefulWidget {
  const ziraApp({super.key});

  @override
  State<ziraApp> createState() => _ziraAppState();
}

class _ziraAppState extends State<ziraApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        // scaffold kebawah dipisah supaya tidak error
        home: tutorDrawer());
  }
}
