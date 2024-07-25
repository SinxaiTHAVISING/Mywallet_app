import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ໂປຣໄຟລ໌"),
        backgroundColor: const Color(0xFF68C3AC),
      ),
      body: Padding(padding: EdgeInsets.all(10),
        child: Column(children: [
          Card(
                color: Color(0xFF68C3AC),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                           Icon(Icons.perm_identity),
                          Text('  ໂປຣໄຟລ໌',style: TextStyle(fontSize: 16),),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
             Card(
                color: Color(0xFF68C3AC),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                           Icon(Icons.report),
                          Text(' ຊ່ວຍເຫຼືອ',style: TextStyle(fontSize: 16),),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
          Card(
                color: Color(0xFF68C3AC),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                           Icon(Icons.trending_flat),
                          Text('  ອອກຈາກລະບົບ',style: TextStyle(fontSize: 16),),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
         
        ],),
      ),
    );
  }
}