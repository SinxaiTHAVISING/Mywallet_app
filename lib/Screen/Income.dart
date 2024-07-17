import 'package:flutter/material.dart';

class Income extends StatefulWidget {
  const Income({super.key});

  @override
  State<Income> createState() => _IncomeState();
}

class _IncomeState extends State<Income> {

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
      appBar: AppBar(title: const Text("ລາຍຮັບ"),
      backgroundColor: const Color(0xFF68C3AC),),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: 'ຄົ້ນຫາ',
                labelStyle:TextStyle(
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
            // SizedBox(height: 20),
            // if (_searchResult.isNotEmpty)
            //   Text(
            //     'Search Result: $_searchResult',
            //     style: TextStyle(fontSize: 18),
            //   ),
              ),
          ],
        ),
      ),
    );
  }
}