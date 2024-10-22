import 'package:flutter/material.dart';

class Mystatelesswidget extends StatelessWidget {
  const Mystatelesswidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ini Program saya bung",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Ini judul APP BAR"),
          backgroundColor: Colors.cyan,
        ),
        body: Center(
          child: Text("Ini adalah halaman utama"),
        )
      ),
    );
  }
}
