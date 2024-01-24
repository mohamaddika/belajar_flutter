import 'package:flutter/material.dart';

class tugas1 extends StatelessWidget {
  tugas1({super.key});
  final List<String> entries = <String>['A', 'B', 'C', 'D'];
  final List<String> image = <String>[
    "https://i.redd.it/j2955rqs5xe91.jpg",
  ];
  final List<String> image2 = <String>[
    "https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/13/2023/12/22/20231222_104153-2070990109.jpg",
    "https://awsimages.detik.net.id/community/media/visual/2022/08/09/lisa-blackpink-diduga-pakai-wig-1_43.jpeg?w=1200",
    "https://o-cdn-cas.sirclocdn.com/parenting/images/Jiso_4.width-800.format-webp.webp",
    "https://akcdn.detik.net.id/visual/2021/02/11/rose-blackpink-5_43.jpeg?w=650&q=90"
  ];

  final List<String> nama = <String>[
    "Jennie Kim",
    "Lisa",
    "Kim Ji-Soo",
    "Rose"
  ];

  final List<String> nama1 = <String>[
    "Banner Black Pink"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          width: double.infinity,
          height: 300,
          child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: image.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '${nama1[index]}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ),
                      Image.network(
                        '${image[index]}',
                        height: 200,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      )
                    ],
                  ),
                );
              }),
        ),
        Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          width: double.infinity,
          height: 170,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(3),
              itemCount: image2.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Container(
                    height: 150,
                    width: 150,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.network(
                            '${image2[index]}',
                            height: 100,
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),
                        Text(' ${nama[index]}',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15))
                      ],
                    ),
                    // child: Center(child: Text('Entry ${entries[index]}')),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
