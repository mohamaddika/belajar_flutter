
import 'package:flutter/material.dart';

class tugas1 extends StatelessWidget {
  tugas1({super.key});
  final List<String> entries = <String>['A', 'B', 'C', 'D'];
  final List<String> image = <String>[
    
    "https://i.redd.it/j2955rqs5xe91.jpg",
    "https://peristiwa.info/wp-content/uploads/2022/08/Screenshot_20220810-162626_Instagram.jpg",
    "https://cdnwpseller.gramedia.net/wp-content/uploads/2022/07/18103925/bp-2.jpg",
    "https://akcdn.detik.net.id/visual/2023/03/14/blackpink-3_43.jpeg?w=360&q=90",
  ];
  final List<String> image2 = <String>[
    "https://awsimages.detik.net.id/community/media/visual/2022/08/09/lisa-blackpink-diduga-pakai-wig-1_43.jpeg?w=1200",
    "https://asset.kompas.com/crops/IqvxMA6wuduz6i0-hs4ziNUqE80=/0x170:1080x890/750x500/data/photo/2022/03/08/62277f10ce7f7.jpg",
    "https://akcdn.detik.net.id/visual/2023/08/11/jisoo-blackpink-3_43.jpeg?w=650&q=90",
    "https://pm1.aminoapps.com/7099/344051f6cf2e8f302b8fb492bddfcca607914089r1-1080-1349v2_uhq.jpg",
    "https://awsimages.detik.net.id/community/media/visual/2018/05/26/3f004af3-863c-4440-b076-fcf33c7cddba_43.png?w=300&q=90"
  ];

  final List<String> nama = <String>[
    "Lisa ",
    "Jennie Kim",
    "Kim Ji-soo",
    "Rosé",
    "Agus Kecut"
  ];

  final List<String> nama1 = <String>[
    "Logo Black Pink",
    "Jadwal Konser BlackPink",
    "Member Member BlackPink",
    "BlackPink Konser"
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
                    height: 100,
                    width: 120,
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
