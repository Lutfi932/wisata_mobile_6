import 'package:flutter/material.dart';

class Pertemuan6 extends StatefulWidget {
  const Pertemuan6({super.key});

  @override
  State<Pertemuan6> createState() => _Pertemuan6State();
}

class _Pertemuan6State extends State<Pertemuan6> {

  bool switchValue = false, olahraga = false, seni = false;
  String selectedRadio = '', nama = '';
  TextEditingController textEditingController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        backgroundColor: Colors.cyan,
        title: Text("Pertemuan6 : Form Screen"),

      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(children: [
              Image.asset("images/patrick.jpg", alignment: Alignment.center, height: 200, width: 200,),
            ],),
            TextField(
              controller: textEditingController,
              decoration: InputDecoration(
                labelText: "Masukkan Nama"
              ),
              onChanged: (String value) => setState(() {nama = value;},),
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Text("Jenis Kelamin : "),
                  Radio(
                    value: "Laki-laki",
                    groupValue: selectedRadio,
                    onChanged: (value) => setState(() {selectedRadio = value.toString();})
                    ),
                    Text("Laki-laki"),
                  Radio(
                    value: "Perempuan",
                    groupValue: selectedRadio,
                    onChanged: (value) => setState(() {selectedRadio = value.toString();})
                    ),
                  Text("Perempuan"),
                  Radio(
                    value: "unknown",
                    groupValue: selectedRadio,
                    onChanged: (value) => setState(() {selectedRadio = value.toString();})
                  ),
                  Text("Tidak tahu"),
                ]
              ),
              SizedBox(height: 5),
              Text("Hobi: "),
              CheckboxListTile(
                title: Text("Olahraga", style: TextStyle(fontStyle: FontStyle.italic),),
                value: olahraga,
                onChanged: (value) => setState(() {olahraga = value!;})
              ),
              CheckboxListTile(
                title: Text("Seni", style: TextStyle(fontStyle: FontStyle.italic),),
                value: seni,
                onChanged: (value) => setState(() {seni = value!;})
              ),
              SizedBox(height: 20,),
              SwitchListTile(
                title: Text("Lulus", style: TextStyle(fontStyle: FontStyle.italic)),
                value: switchValue,
                onChanged:(value) => setState(() {switchValue = value;}),
              ),
              ElevatedButton(
                style: ButtonStyle(),
                onPressed: () => '',
                child: Text("Simpan")
              ),
          ],
        )
        ),
    );
  }
}