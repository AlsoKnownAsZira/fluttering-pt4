import 'package:flutter/material.dart';

class tutorBottomNavBar extends StatefulWidget {
  const tutorBottomNavBar({super.key});

  @override
  State<tutorBottomNavBar> createState() => _tutorBottomNavBarState();
}

class _tutorBottomNavBarState extends State<tutorBottomNavBar> {
  @override
  // mengatur index untuk bisa ganti state
  late int index;
  @override
  void initState() {
    index = 0;
    super.initState();
  }
// membuat list untuk menampung isi tiap navbar, dimulai dari index ke 0
  List showWidget = [
    Center(
      child: Text("HOME"),
    ),
    Center(
      child: Text("Search"),
    ),
    Center(
      child: Text("Notifications"),
    ),
    Center(
      child: Text("Settings"),
    ),
    Center(
      child: Text("Report"),
    ),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom nav bar"),
      ),
      //body memanggil widget untuk menampilkan isi navbar
      body: showWidget[index],

      bottomNavigationBar: BottomNavigationBar(
        
        showUnselectedLabels: true,
        backgroundColor: Colors.amber,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        currentIndex: index,
        // mengubah index saat icon di tap, karena saat di tap akan didapatkan value
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        // memasang icon navbar
        items: [
          // icon index ke-0
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "HOME"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "SEARCH"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: "Notifications"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
          BottomNavigationBarItem(icon: Icon(Icons.report), label: "Report"),
        ],
      ),
    );
  }
}
