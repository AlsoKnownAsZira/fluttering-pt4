import 'package:flutter/material.dart';
import 'package:section4/pages/profilePage.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HOME PAGE"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("THIS IS HOME PAGE"),
            ElevatedButton(
              //mengatur perpindahan page(push: ke page diatasnya)
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => profilePage(),));
                },
                child: Text("NEXT PAGE >"))
          ],
        ),
      ),
    );
  }
}
