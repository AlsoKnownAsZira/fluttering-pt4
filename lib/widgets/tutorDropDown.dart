import 'package:flutter/material.dart';

class tutorDropDown extends StatelessWidget {
  tutorDropDown({super.key});
  final List itemsList = [
    // membuat map item list
    {
      // key(yang akan tampil di drop down)
      "menu": "Nasi Goreng",
      // value (yang akan ditangkap di debug console saat key dipencet)
      "harga": 10000
    },
    {"menu": "Krengsengan", "harga": 20000},
    {"menu": "Sate Kambing", "harga": 15000}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Drop down tutorial"),
        ),
        body: Center(
          // dibungkus padding biar bisa pas ditengah
          child: Padding(
              padding: EdgeInsets.all(30),
              // jika child dan value string bisa memakai <String>
              child: DropdownButton<int>(
                // mapping itemsList untuk ditampung ke (e)
                items: itemsList
                    .map(
                      (e) => DropdownMenuItem(
                        // child: yang muncul di dropDown
                        child: Text("${e['menu']}"),
                        // value: hasil setelah yang di dropdown di click (bisa dilihat di debugConsole setelah di print dibawah)
                        value: e['harga'] as int,
                      ),
                    )
                    .toList(),
                    //menentukan apa yang terjadi setelah mendapat value
                onChanged: (value) {
                  print(value);
                },
              )),
        ));
  }
}
