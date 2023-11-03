

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Profile Page",
        style: TextStyle(
          color: Colors.white,
        ),),
      ),
      body: Column(
        children: [
          customForm(icon: Icon(Icons.person),
          hintText: "Masukan nama",
          helperText: "*Jangan Lupa Diisi"),
          customForm(icon: Icon(Icons.mail),
          hintText: "Masukan Email",
          helperText: "*Jangan Lupa Diisi"),
          customForm(icon: Icon(Icons.phone),
          hintText: "Nomor Telepone",
          helperText: null),
          customForm(icon: Icon(Icons.home),
          hintText: "Alamat",
          helperText: null),
          ElevatedButton(
            onPressed: () {
              Fluttertoast.showToast(
                  msg: "This is Center Short Toast",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  fontSize: 16.0
              );
            },
            child: Text("Simpan"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
            ) ,
          ),
        ],
      ),
    );
  }

  Padding customForm({required Icon icon,required String hintText,String? helperText}) {
    return Padding(
          padding: const EdgeInsets.all(5.0),
          child: TextFormField(
            decoration: InputDecoration(
              helperText: helperText,
              hintText: hintText,
              prefixIcon: icon,
              suffixIcon: Icon(Icons.chevron_right),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: Colors.blueAccent,
                ),
              ),
            ),
          ),
        );
  }
}
