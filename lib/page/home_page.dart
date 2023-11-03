
import 'package:flutter/material.dart';
import 'package:qr_scan/page/profile_page.dart';
import 'package:qr_scan/page/qr_page.dart';

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
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Text("Hello Guys"),
          Container(
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext ctx) => ProfilePage()));
              },
              child: Text("Simpan"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext ctx) => QRPage()));
                },
                child: Text("QR"),
            ),
          ),
        ],
      ),
      drawer: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width - 70,
        child: ListView(
          children: [
            Text(
              "Gmail",
              style: TextStyle(fontSize: 20),
            ),
            Divider(),
            drawer(
              iconData: Icons.all_inbox_outlined,
              Teks: "Semua Kontak",
            ),
            Divider(),
            drawer(iconData: Icons.inbox, Teks: "Utama"),
            drawer(iconData: Icons.discount, Teks: "Promosi"),
            drawer(iconData: Icons.person_2_outlined, Teks: "Sosial"),
            drawer(iconData: Icons.info, Teks: "Update"),
            Text(
              "Semua label",
              style: TextStyle(fontSize: 12),
            ),
            drawer(iconData: Icons.star, Teks: "Berbintang"),
            drawer(iconData: Icons.schedule, Teks: "Ditunda"),
            drawer(iconData: Icons.label_important_outline, Teks: "Penting"),
            drawer(iconData: Icons.send, Teks: "Terkirim"),
            drawer(iconData: Icons.schedule_send, Teks: "Terjadwal"),
            drawer(iconData: Icons.outbox, Teks: "Kontak Keluar"),
            drawer(iconData: Icons.insert_drive_file_outlined, Teks: "Draf"),
            drawer(iconData: Icons.mail_outline, Teks: "Semua Email"),
            drawer(iconData: Icons.report_gmailerrorred_outlined, Teks: "Spam"),
            Text(
              "Aplikasi Google",
              style: TextStyle(fontSize: 20),
            ),
            drawer(iconData: Icons.calendar_today, Teks: "Kalender"),
            drawer(iconData: Icons.contacts, Teks: "Kontak"),
            Divider(),
            drawer(iconData: Icons.settings, Teks: "Setelan"),
            drawer(iconData: Icons.help, Teks: "Bantuan")
          ],
        ),
      ),
    );
  }

  Widget drawer({required IconData iconData, required String Teks}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Icon(iconData),
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Text(Teks),
          ),
        ],
      ),
    );
  }
}
