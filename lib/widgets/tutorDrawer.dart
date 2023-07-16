import 'package:flutter/material.dart';

class tutorDrawer extends StatelessWidget {
  const tutorDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer tutorial"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            // container atas, dipisah dengan yang lain biar tidak scrollable
            Container(
              padding: EdgeInsets.all(20),
              alignment: Alignment.bottomLeft,
              width: double.infinity,
              height: 170,
              color: Colors.blue,
              child: const Text(
                "Dashboard ",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            // listView dibungkus extended biar muncul
            Expanded(
                child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("HOME"),
                  trailing: Icon(Icons.arrow_right_alt_rounded),
                ),
                ListTile(
                  leading: Icon(Icons.shopping_cart),
                  title: Text("CART"),
                  trailing: Icon(Icons.arrow_right_alt_rounded),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("SETTINGS"),
                  trailing: Icon(Icons.arrow_right_alt_rounded),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
