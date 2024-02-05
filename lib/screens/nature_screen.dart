import 'package:belajar/screens/detail_nature.dart';
import 'package:flutter/material.dart';
import '../helper/size_helper.dart';

class ListNatureScreen extends StatelessWidget {
  final List<Map<String, dynamic>> galaxyData = [
    {
      "nama": "Nature",
      "jenis": "Diamond Beach",
      "image": "images/dm.jpeg",
      "desc":
          "dinamakan Diamond Beach karena di sekitar pantai terdapat sebuah tebing karst yang tinggi dan besar."
    },
    {
      "nama": "Nature",
      "jenis": "Montain",
       "image": "images/montain.jpg",
      "desc":
          "Lembah gunung saat matahari terbit. Pemandangan musim panas alami."
    },
    {
      "nama": "Nature",
      "jenis": "Flower Montain",
       "image": "images/bunga.jpg",
      "desc":
          "Flower photography is a diverse sub-genre of nature photography that runs the gamut from wide-angle sweeping wildflower landscapes to close-up floral garden portraits and impressionist abstract macro photos."
    },
    {
      "nama": "Nature",
      "jenis": "Kelimutu",
       "image": "images/kelimutu.jpg",
      "desc": "Sejarah Danau Kelimutu mulai dikisahkan ketika danau ini ditemukan oleh Van Such Telen pada tahun 1915. Dikutip dari buku Kompeten Berbahasa Indonesia, Danau Kelimutu berada di Pulau Flores, Nusa Tenggara Timur dan terletak 66 km dari Kabupaten Ende. Danau ini sebenarnya adalah kawah Gunung Berapi Kelimutu."
    },
    {
      "nama": "Nature",
      "jenis": "Bromo",
       "image": "images/11.jpg",
      "desc": "Located in the Bromo-Tengger-Semeru National Park beside Mount Semeru in East Java, Mount Bromo remains one of the most active volcanoes in the world. Standing at 2,329 metres tall, Bromo is the most iconic and most hiked mountain in all of Indonesia. The main cone sits smouldering inside the massive Tengger caldera, covering an area of 10km and surrounded by the Laut Pasir (sea of sand); a desolate plateau of fine black volcanic sand and rock. Trekking across the vast rippling plain or traversing on horseback, travellers can get a unique panoramic view of a spectacular natural wonder. Visiting Bromo is an experience that is truly out of this world."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.builder(
          itemCount: galaxyData.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailNatureScreen(
                              nama: galaxyData[index]["nama"],
                              jenis: galaxyData[index]["jenis"],
                              image: galaxyData[index]["image"],
                              desc: galaxyData[index]["desc"],
                            )));
              },
              child: Container(
                alignment: Alignment.bottomLeft,
                height: displayHeight(context) * 0.25,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage("${galaxyData[index]["image"]}"),
                      fit: BoxFit.cover,
                    )),
                child: Text(
                  "${galaxyData[index]["nama"]} - ${galaxyData[index]["jenis"]}",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
