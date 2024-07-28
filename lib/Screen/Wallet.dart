import 'dart:io';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  // ----------------------------
  final ImagePicker _picker = ImagePicker();
  File? _image;

  Future<void> _openCamera() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.camera);
    if (image != null) {
      setState(() {
        _image = File(image.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wallet"),
        backgroundColor: const Color(0xFF68C3AC),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              color: Color(0xFF68C3AC),
              child: ListTile(
                title: Text('Mr. Johnsmith',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '129-55445-556-68',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 5.0),
                    Text('ຍອດງິນ: 300,000,000 LAK',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Card(
              color: Color(0xFF68C3AC),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('ສະຫຼຸບຂອງມື້ນີ້',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18)),
                        Text('Date:01/07/2024',
                            style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'ລາຍຮັບ: 21,000,000 LAK',
                    ),
                    Text(
                      'ລາຍຈ່າຍ: 1,000,000 LAK',
                    ),
                    Text(
                      'Balance: 20,000,000 LAK',
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Card(
              color: Color(0xFF68C3AC),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('ສະຫຼຸບຍອດຂອງເດືອນ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18)),
                        Text('07 – July',
                            style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'ລາຍຮັບ: 21,000,000 LAK',
                    ),
                    Text(
                      'ລາຍຈ່າຍ: 1,000,000 LAK',
                    ),
                    Text(
                      'Balance: 20,000,000 LAK',
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:150),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionButton(
                    onPressed: 
                      // Add your onPressed code here!
                      _openCamera,
                    child: const Icon(Icons.qr_code),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
