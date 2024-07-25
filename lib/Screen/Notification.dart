import 'package:flutter/material.dart';

class Notifi_cation extends StatefulWidget {
  const Notifi_cation({super.key});

  @override
  State<Notifi_cation> createState() => _Notifi_cationState();
}

class _Notifi_cationState extends State<Notifi_cation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ແຈ້ງເຕືອນ"),
        backgroundColor: const Color(0xFF68C3AC),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 16.0),
            SingleChildScrollView(
             child: Column(children: [
              Container(
                child: Card(
                color: Color(0xFFD9D9D9),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('ໄດ້ຮັບເງິນໂອນ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18)),
                          Text('25,000,000 LAK',
                              style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize:18)),
                        ],
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'Details:',
                      ),
                      Text(
                        'Date:01/07/2024',
                      ),
                    ],
                  ),
                ),
              ),
              ),
              Container(
                child: Card(
                color: Color(0xFFD9D9D9),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('ໄດ້ຮັບເງິນໂອນ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18)),
                          Text('2,000,000 LAK',
                              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize:18)),
                        ],
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'Details:',
                      ),
                      Text(
                        'Date:01/07/2024',
                      ),
                    ],
                  ),
                ),
              ),
              )
             ],),
            ),
          ],
        ),
      ),
    );
  }
}