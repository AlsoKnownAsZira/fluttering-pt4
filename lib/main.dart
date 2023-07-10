import 'package:flutter/material.dart';
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
        // scaffold kebawah dipisah supaya tidak error
        home: tutorSnackbar());
  }
}