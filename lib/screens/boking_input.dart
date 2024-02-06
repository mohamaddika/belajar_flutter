import 'package:belajar/helper/size_helper.dart';
import 'package:belajar/screens/boking_output.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NatureBoking extends StatefulWidget {
  const NatureBoking({super.key});

  @override
  State<NatureBoking> createState() => _NatureBokingState();
}

class _NatureBokingState extends State<NatureBoking> {
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  //mendeskripsikan variabel input
  TextEditingController namaController = TextEditingController();
  TextEditingController jmlController = TextEditingController();
  TextEditingController tglBerangkatController = TextEditingController();
  String _pilihTujuan = '';

  final List<String> tujuan = [
    "Nature Diamond Beach",
    "Nature Montain",
    "Nature Flower Montain",
    "Nature Kelimutu",
    "Nature Bromo"
  ];

  final Map<String, double> tujuanHarga = {
    "Nature Diamond Beach": 25000.0,
    "Nature Montain": 50000.0,
    "Nature Flower Montain": 37000.0,
    "Nature Kelimutu": 650000.0,
    "Nature Bromo": 34000.0,
  };

  final Map<String, String> tujuanImage = {
    "Nature Diamond Beach": "images/dm.jpeg",
    "Nature Montain": "images/montain.jpg",
    "Nature Flower Montain": "images/bunga.jpg",
    "Nature Kelimutu": "images/Kelimutu.jpg",
    "Nature Bromo": "images/11.jpg",
  };

  double selectedtujuanHarga = 10000.0;
  String selectedtujuanImage = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                elevation: 4,
                margin: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: EdgeInsets.all(24),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Tiket Berangkat"),
                        SizedBox(
                          height: 18,
                        ),
                        TextFormField(
                          controller: namaController,
                          decoration: InputDecoration(
                              hintText: "Nama lengkap",
                              border: OutlineInputBorder()),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'input nama';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        DropdownButtonFormField(
                          decoration: InputDecoration(
                              hintText: "tujuan",
                              labelText: "pilih tujuan",
                              border: OutlineInputBorder()),
                          items: tujuan.map((String items) {
                            int index = 0;
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              _pilihTujuan = newValue!;
                              selectedtujuanHarga =
                                  tujuanHarga[_pilihTujuan] ?? 10000.0;
                              selectedtujuanImage =
                                  tujuanImage[_pilihTujuan] ?? '';
                            });
                          },
                        ),
                        SizedBox(
                          height: 18,
                        ),
                         TextFormField(
                          controller: jmlController,
                          decoration: InputDecoration(
                              hintText: "Jumlah Tiket",
                              border: OutlineInputBorder()),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Input Jumlah Tiket ';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 18,
                        ),
                       TextFormField(
                          controller: tglBerangkatController,
                          decoration: InputDecoration(
                              hintText: "Tanggal Berangkat",
                              border: OutlineInputBorder()),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Input tanggal Berangkat ';
                            }
                            return null;
                          },
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1900),
                              lastDate: DateTime(2100),
                            );
                            if (pickedDate != null) {
                              String tglBerangkat =
                                  DateFormat('yyyy-MM-dd').format(pickedDate);
                              setState(() {
                                tglBerangkatController.text = tglBerangkat;
                              });
                            } else {
                              print("tanggal tidak dipilih");
                            }
                          },
                        ),
                         SizedBox(
                          height: 18,
                        ),
                        SizedBox(
                          width: displayWidht(context) * 0.8,
                          height: displayHeight(context) * 0.075,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.blueAccent),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadiusDirectional.circular(10),
                                  side: BorderSide(color: Colors.white60),
                                ),
                              ),
                            ),
                            child: Text(
                              "simpan",
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {
                              _submit();
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _submit() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    } else {
      _formKey.currentState!.save();
      String nama = namaController.text;
      String tujuan = _pilihTujuan;
      String jumlah = jmlController.text;
      String tglBerangkat = tglBerangkatController.text;
      String img = selectedtujuanImage;
      double totalHarga = double.parse(jumlah) * selectedtujuanHarga;
      print(img);
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => OutputFormScreen(
            nama: nama,
            jumlah: jumlah,
            tglBerangkat: tglBerangkat,
            tujuan: _pilihTujuan,
            selectedtujuanHarga: selectedtujuanHarga,
            totalHarga: totalHarga,
            tujuanImage: img,
          ),
        ),
      );
    }
  }
}
