import 'package:flutter/material.dart';

class tutorTextField extends StatefulWidget {
  const tutorTextField({super.key});

  @override
  State<tutorTextField> createState() => _tutorTextFieldState();
}

class _tutorTextFieldState extends State<tutorTextField> {
  // boolean untuk mengubah status obscure text(menampilkan password)
  bool hidePass = true;
  // controller untuk mendapatkan value yang di inputkan pada text field
  // value akan muncul pada debug console
  TextEditingController emailControl = TextEditingController();
  TextEditingController passControl = TextEditingController();
  TextEditingController birthControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Field tutorial!"),
        centerTitle: true,
      ),
      // direkomendasikan memakai listview agar konten tidak terpotong saat keyboard muncul
      body: ListView(
        //padding agar textfield tidak mepet
        padding: EdgeInsets.all(20),
        children: [
          //textField email
          TextField(
            controller: emailControl,
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            // decoration untuk kustomisasi textField
            decoration: InputDecoration(
              //padding untuk besar textField
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              labelText: "EMAIL",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              // menambah icon sebelum pengisian text
              prefixIcon: Icon(Icons.email_outlined),
            ),
          ),
          SizedBox(
            height: 20,
          ),
            TextField(
            controller: birthControl,
            autocorrect: false,
            keyboardType: TextInputType.datetime,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                labelText: "Birth date(DD/MM/YYYY)",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                prefixIcon: Icon(Icons.date_range_outlined)),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: passControl,
            autocorrect: false,
            obscureText: hidePass,
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                labelText: "PASSWORD",
                // memberi border pada textField
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                prefixIcon: Icon(Icons.key),
                // icon button (nantinya bisa dipencet)
                suffixIcon: IconButton(
                    onPressed: () {
                      if (hidePass == true) {
                        hidePass = false;
                      } else {
                        hidePass = true;
                      }
                      setState(() {});
                    },
                    icon: Icon(Icons.remove_red_eye))),
          ),
          SizedBox(
            height: 20,
          ),
        
          ElevatedButton(
            onPressed: () {
              // menampilkan controller pada debug console
              //diberi .text agar informasi text saja yang keluar, informasi mengenai controller yang kurang penting tidak akan diprint
              print("Sukses login dengan keterangan email: ${emailControl.text} password: ${passControl.text} tanggal lahir: ${birthControl.text}");
            },
            child: Text("LOGIN"),
            //kustomisasi elevated button
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red[500],
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30))),
          )
        ],
      ),
    );
  }
}
