import 'package:flutter/material.dart';

class settingPage extends StatelessWidget {
  const settingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("SETTING PAGE"),
        leading: SizedBox(),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("THIS IS SETTING PAGE"),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    //mengatur perpindahan page(pop: ke page dibawah)
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("< PREV PAGE ")),
              ]
            ),
          ],
        ),
      ),

    );
  }
}