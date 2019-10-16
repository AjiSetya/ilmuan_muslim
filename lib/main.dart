import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ilmuan Islam"),
      ),
      body: PageView(
        children: <Widget>[
          _createPageItemUI(
              "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b4/Avicenna_Portrait_on_Silver_Vase_-_Museum_at_BuAli_Sina_%28Avicenna%29_Mausoleum_-_Hamadan_-_Western_Iran_%287423560860%29.jpg/220px-Avicenna_Portrait_on_Silver_Vase_-_Museum_at_BuAli_Sina_%28Avicenna%29_Mausoleum_-_Hamadan_-_Western_Iran_%287423560860%29.jpg",
              "Judul",
              "deskripsi"),
          _createPageItemUI(
              "https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/1983_CPA_5426_%281%29.png/250px-1983_CPA_5426_%281%29.png",
              "Muḥammad bin Mūsā al-Khawārizmī",
              "deskripsi"),
          _createPageItemUI(
              "https://upload.wikimedia.org/wikipedia/commons/thumb/0/06/Al-jazari_water_device.jpg/200px-Al-jazari_water_device.jpg",
              "Al-Jazari",
              "deskripsi")
        ],
      ),
    );
  }

  Widget _createPageItemUI(String urlGambar, String nama, String deskripsi) {
    return Container(
      child: ListView(
        children: <Widget>[
          Image(
              fit: BoxFit.cover, height: 300.0, image: NetworkImage(urlGambar)),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: Text(
              nama,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
          ),
          Divider(
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              deskripsi,
              style: TextStyle(fontSize: 16.0),
            ),
          )
        ],
      ),
    );
  }
}
