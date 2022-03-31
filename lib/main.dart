import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: cobaListView(),
    );
  }
}

class cobaListView extends StatelessWidget {
  final List<String> gambar = [
    'asset/image/doraemon.jpg',
    'asset/image/haikyuu.jpg',
    'asset/image/subasa.jpg',
    'asset/image/naruto.jpg',
    'asset/image/jujutsu_kaisen.jpg',
    'asset/image/one_piece.jpg',
  ];

  final List<String> sub = [
    'DORAEMON',
    'HAIKYUU',
    'SUBASA',
    'NARUTO',
    'JUJUTSU KAISEN',
    'ONE PIECE',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("GALERI", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30)),
        ),
        backgroundColor: Colors.blue[200],
      ),
      body: ListView.builder(
        itemCount: gambar.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: ClipRRect(
                  child: Image.asset(
                gambar[index],
                width: 350,
                height: 200,
                fit: BoxFit.cover,
              )),
              subtitle: Text(sub[index], style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20)),
            ),
          );
        },
      ),
    );
  }
}
