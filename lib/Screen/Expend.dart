import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Expend extends StatefulWidget {
  const Expend({super.key});

  @override
  State<Expend> createState() => _ExpendState();
}

class _ExpendState extends State<Expend> {
  TextEditingController _searchController = TextEditingController();
  String _searchResult = '';
  void _performSearch() {
    setState(() {
      _searchResult = _searchController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ລາຍຈ່າຍ"),
        backgroundColor: const Color(0xFF68C3AC),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  labelText: 'ຄົ້ນຫາ',
                  labelStyle: TextStyle(
                    fontSize: 20,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    borderSide: BorderSide(
                      color: Colors.blue,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.search),
                    onPressed: _performSearch,
                  ),
                ),
              ),
            ),
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
                          Text('25,000,000 LAK',
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
