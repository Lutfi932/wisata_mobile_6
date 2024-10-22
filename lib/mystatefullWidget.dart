import 'package:flutter/material.dart';

class MyStatefullwidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyStatefullwidget();
}

class _MyStatefullwidget extends State<MyStatefullwidget> {
  var _hitung = 0;

  void _tambahAngka() {
    setState(() {
      _hitung++;
    });
  }

  void _ulangi() {
    setState(() {
      _hitung -= _hitung;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Ini adalah title",
        home: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${_hitung}"),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: _tambahAngka, child: Text("Tambahkan angka")),
            SizedBox(
              height: 30,
              width: 50,
            ),
            ElevatedButton(onPressed: _ulangi, child: Text("Ulangi angka")),
          ],
        ));
  }
}
