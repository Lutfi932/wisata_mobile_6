import 'package:flutter/material.dart';
import 'package:wisata_mobile/materimodelscreen/pertemuan6.dart';
import 'package:wisata_mobile/screens/splashscreen.dart';

class Mystatelesswidget extends StatelessWidget {
  const Mystatelesswidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Pertemuan6(),
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: Text("Ini judul APP BAR"),
      //     backgroundColor: Colors.cyan,
      //   ),
      //   body: Center(
      //     child: Text("Ini adalah halaman utama"),
      //   )
      // ),
    );
  }
}
