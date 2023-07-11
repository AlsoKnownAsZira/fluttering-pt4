import 'package:flutter/material.dart';

class tutorTabBar extends StatelessWidget {
  const tutorTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    //scaffold dibungkus widget dibawah
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Whatsapp"),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined)),
            SizedBox(
              width: 20,
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            SizedBox(
              width: 20,
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_sharp)),
          ],
          backgroundColor: Colors.teal,
          // bottom : dibawah title dan actions
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.groups),
            ),
            Tab(
              text: "Chats",
            ),
            Tab(
              text: "Status",
            ),
            Tab(
              text: "Calls",
            ),
          ]),
        ),
        //body untuk menampilkan tabBarView
        body: TabBarView(children: [
          //urutan penampilan harus urut, dan jumlah harus sama
          Center(child: Text("Communities")),
          Center(child: Text("Chats")),
          Center(child: Text("Status")),
          Center(child: Text("Calls")),
        ]),
      ),
    );
  }
}
