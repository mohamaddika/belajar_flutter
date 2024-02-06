import 'package:belajar/helper/size_helper.dart';
import 'package:belajar/helper/size_helper.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'boking_output.dart';

class NatureBoking extends StatefulWidget {
  const NatureBoking({Key? key}) : super(key: key);

  @override
  State<NatureBoking> createState() => _NatureBokingState();
}

class _NatureBokingState extends State<NatureBoking> {
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  TextEditingController namaController = TextEditingController();
  TextEditingController jumlahController = TextEditingController();
  TextEditingController tglController = TextEditingController();
  String _pilihTiket = " ";
  final List<String> nature = [
    "Nature Diamond Beach - Rp. 25.000",
    "Nature Montain - Rp. 50.000",
    "Nature Flower Montain - Rp.37.000",
    "Nature Kelimutu - Rp.650.000",
    "Nature Bromo - Rp. 34.000"
  ];

  final Map<String, double> hargaNature = {
    "Nature Diamond Beach": 25000.0,
    "Nature Montain": 50000.0,
    "Nature Flower Montain": 37000.0,
    "Nature Kelimutu": 650000.0,
    "Nature Bromo": 34000.0,
  };

  final Map<String, String> natureImages = {
    "Nature Deamond Beach - Rp. 25.000": "image" "images/montain.jpg",
    "Nature Montain - Rp. 50.000": "",
    "Nature Flower Montain - Rp.37.500": "",
    "Nature Kelimutu - Rp.650.000": "",
    "Nature Bromo - Rp. 34.000": "",
  };

  double pilihTiketNature = 25000.0;

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
                ),
                child: Padding(
                  padding: EdgeInsets.all(24),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Pembelian Tiket Masuk"),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: namaController,
                          decoration: InputDecoration(
                            hintText: "Nama Lengkap",
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Input Data';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        DropdownButtonFormField(
                          decoration: InputDecoration(
                              hintText: "Tiket",
                              labelText: "Pilih Tiket",
                              border: OutlineInputBorder()),
                          items: nature.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              _pilihTiket = newValue!;
                              pilihTiketNature =
                                  hargaNature[_pilihTiket] ?? 25000.0;
                            });
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: jumlahController,
                          decoration: InputDecoration(
                            hintText: "Jumlah Tiket",
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Input Data';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: tglController,
                          decoration: InputDecoration(
                            hintText: "Tanggal Pembelian",
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Input Data';
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
                              String tgl =
                                  DateFormat('yyyy-MM-dd').format(pickedDate);
                              setState(() {
                                tglController.text = tgl;
                              });
                            } else {
                              print("Tanggal Tidak Dipilih");
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
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: BorderSide(color: Colors.white60)),
                              ),
                            ),
                            child: Text("Beli Tiket"),
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
      String jumlah = jumlahController.text;
      String tgl = tglController.text;

      double totalHarga = double.parse(jumlah) * pilihTiketNature;

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => bokingOutput(
            nama: nama,
            jumlah: jumlah,
            tgl: tgl,
            nature: _pilihTiket,
            pilihTiketNature: pilihTiketNature,
            totalHarga: totalHarga,
            natureImage: natureImages[_pilihTiket] ?? "",
          ),
        ),
      );
    }
  }
}
