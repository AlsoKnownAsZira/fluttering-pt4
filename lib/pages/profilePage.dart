import 'package:flutter/material.dart';
import 'package:section4/pages/settingPage.dart';

class profilePage extends StatelessWidget {
  const profilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PROFILE PAGE"),
        leading: SizedBox(),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("THIS IS PROFILE PAGE"),
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
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => settingPage(),
                      ));
                    },
                    child: Text("NEXT PAGE >"))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
