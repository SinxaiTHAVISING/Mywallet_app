import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {

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
      appBar: AppBar(title: const Text("Wallet"),
      backgroundColor: const Color(0xFF68C3AC),),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
               Container(
                  width: 500,
                  height: 100,
                  decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(30),),
                  child: Column(
                    children: [
                      Text("Mr JonhSmith",
                      style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'NotoSansLao'
                      )),
                      Text("129-232-222-12",style:TextStyle(
                        color: Colors.white
                      ),)
                    ],
                  ),
                ),
              // Container(
              //    margin:const EdgeInsets.only(top: 10),
              //     width: double.infinity,
              //     height: 100,
              //     color: Colors.red,
              //      decoration:const BoxDecoration(
              //       color: Colors.green,
              //       borderRadius: BorderRadius.only(
              //           topLeft: Radius.circular(38),
              //           bottomRight: Radius.circular(38)),
              //     ),
              //   child: Column(
              //            children: [
              //             Text(
              //                 "Mr. Smith",
              //                 style: TextStyle(fontWeight: FontWeight.bold),
              //               ),
              //            ],
              //           ),
              // )
            ],
            
          ),
        ),
      ),
    );
  }
}
