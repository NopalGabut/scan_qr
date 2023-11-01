import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home Page",
          style: TextStyle(color: Colors.red),
        ),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Text("Hello Guys"),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Masukan Nama",
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: Colors.blueAccent,
                  ),
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("Simpan"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
            ) ,
          ),
        ],
      ),
    );
  }
}
