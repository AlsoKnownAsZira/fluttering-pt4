import 'package:flutter/material.dart';
class tutordialogueBox extends StatelessWidget {
  const tutordialogueBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialogue test"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              // di tahap ini bisa ditentukan akan memakai dialog atau Alert dialog atau yang lain
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text("Dialogue title"),
                  content: Text("This is the description"),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  // actions : yang ada dibawah box dialog (biasanya tombol)
                  actions: [
                    ElevatedButton(onPressed: () {}, child: Text("OK")),
                    ElevatedButton(onPressed: () {}, child: Text("CANCEL"))
                  ],
                ),
              );
            },
            child: Text("Show dialogue")),
      ),
    );
  }
}
