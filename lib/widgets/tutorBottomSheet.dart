import 'package:flutter/material.dart';

class tutorBottomSheet extends StatelessWidget {
  const tutorBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom Sheet")),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                    //pada builder bottom sheet bisa diisi apa saja untuk ditampilkan di layer atasnya
                    context: context,
                    // layar dibawahnya tidak bisa di click kecuali click cancel untuk kembali
                    isDismissible: false,
                    shape: RoundedRectangleBorder(
                        // border dari bottomsheet
                        borderRadius: BorderRadius.circular(20)),
                    builder: (context) => SizedBox(
                          height: 300,
                          //biar bisa di scroll
                          child: ListView(
                            children: [
                              Padding(padding: EdgeInsets.only(bottom: 20)),
                              Text(
                                "Share to: ",
                                style: TextStyle(fontSize: 20),
                              ),
                              ListTile(
                                //action saat di tap
                                onTap: () {
                                  print("Sending sms");
                                },
                                leading: Icon(Icons.chat),
                                title: Text("SMS"),
                              ),
                              ListTile(
                                onTap: () {
                                  print("Opening bluetooth setting");
                                },
                                leading: Icon(Icons.bluetooth),
                                title: Text("Bluetooth"),
                              ),
                              ListTile(
                                onTap: () {
                                  print("opening pc sharing");
                                },
                                leading: Icon(Icons.laptop_windows_sharp),
                                title: Text("Send to PC"),
                              ),
                              ListTile(
                                onTap: () {
                                  // untuk kembali ke layer bawahnya
                                  Navigator.pop(context);
                                  print("cancelled");
                                },
                                leading: Icon(Icons.cancel),
                                title: Text("Cancel"),
                              )
                            ],
                          ),
                        ));
              },
              child: Text("Share"))),
    );
  }
}
