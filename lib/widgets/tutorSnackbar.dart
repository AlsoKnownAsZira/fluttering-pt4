import 'package:flutter/material.dart';

class tutorSnackbar extends StatelessWidget {
  const tutorSnackbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Snackbar tutorial"),
      ),
      body: Center(
        // elevated button untuk me-trigger snackbox saat dipencet
        child: ElevatedButton(
            onPressed: () {
// snackbar akan ditampilkan dengan scaffold khusus
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(
                  "product deleted!",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                //action: suatu tombol yang biasanya ada di snackbar (biasanya untuk cancel sebuah action)
                action: SnackBarAction(
                    label: "Cancel",
                    onPressed: () {
                      // setelah label cancel ditekan, pada debug console akan print dibawah
                      print("Deletion cancelled");
                    }),
                //kustomisasi snackbar
                duration: Duration(seconds: 5),
                // jika behaviour default, animasi akan full dari bawah layar
                // namun jika floating, akan dipotong dan melayang serta bisa kustomisasi border
                behavior: SnackBarBehavior.floating,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              ));
            },
            child: Text("Show snackbar")),
      ),
    );
  }
}
