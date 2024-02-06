import 'package:flutter/material.dart';

class bokingOutput extends StatelessWidget {
  final String nama, jumlah, tgl, nature, natureImage;
  final double pilihTiketNature, totalHarga;

  bokingOutput({
    Key? key,
    required this.nama,
    required this.jumlah,
    required this.tgl,
    required this.nature,
    required this.pilihTiketNature,
    required this.totalHarga,
    required this.natureImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tiket Boking Masuk Nature'),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: ListView(
          children: [
            ListTile(
              title: Image.network(natureImage, height: 300, width: 300),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Nama : $nama'),
                  Text('Jumlah Tiket Di Pesan : $jumlah'),
                  Text('Tanggal Pembelian : $tgl'),
                  Text('Taman : $nature'),
                  Text('Harga per Tiket : $pilihTiketNature'),
                  Text('Total Harga : $totalHarga'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
