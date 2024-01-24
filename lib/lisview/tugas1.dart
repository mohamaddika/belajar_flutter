import 'package:flutter/material.dart';

class ListItem {
  final String imageUrl; // Tambahkan properti gambar
  final String text;

  ListItem(this.imageUrl, this.text);
}

class tugas1 extends StatelessWidget {
  tugas1({super.key});

  final List<ListItem> itemList = [
    ListItem(
       "https://awsimages.detik.net.id/community/media/visual/2022/08/09/lisa-blackpink-diduga-pakai-wig-1_43.jpeg?w=1200",
        "Lisa"),
    ListItem(
         "https://asset.kompas.com/crops/IqvxMA6wuduz6i0-hs4ziNUqE80=/0x170:1080x890/750x500/data/photo/2022/03/08/62277f10ce7f7.jpg",
        "Jennie Kim"),
    ListItem(
        "https://akcdn.detik.net.id/visual/2023/08/11/jisoo-blackpink-3_43.jpeg?w=650&q=90",
        "Kim Ji-soo"),
    ListItem(
        "https://pm1.aminoapps.com/7099/344051f6cf2e8f302b8fb492bddfcca607914089r1-1080-1349v2_uhq.jpg",
        " Rosé"),
    ListItem(
        "https://awsimages.detik.net.id/community/media/visual/2018/05/26/3f004af3-863c-4440-b076-fcf33c7cddba_43.png?w=300&q=90",
        "Agus Kecut"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 140,
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://i.redd.it/j2955rqs5xe91.jpg"),
                        fit: BoxFit.cover),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      width: 500,
                      height: 300,
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                      ),
                      child: ListView.separated(
                          scrollDirection: Axis.vertical,
                          itemCount: itemList.length,
                          separatorBuilder: (context, index) {
                            return Divider(
                              color: Colors.yellow,
                            );
                          },
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.all(10),
                              height: 100,
                              width: 200,
                              child: Row(
                                children: [
                                  Container(
                                    width: 200,
                                    height: 200,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                itemList[index].imageUrl))),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: 200,
                                        child: Text(itemList[index].text),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            );
                          }),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text("Galery"),
                    Container(
                      width: 500,
                      height: 150,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: itemList.length,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.all(8),
                              child: Row(
                                children: [
                                  Container(
                                    width: 100,
                                    child: Image.network(
                                      itemList[index].imageUrl,
                                      width: 300,
                                      height: 200,
                                    ),
                                  )
                                ],
                              ),
                            );
                          }),
                    )
                  ],
                )
              ],
            )
          ],
        ));
  }
}
