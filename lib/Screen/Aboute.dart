import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Aboute extends StatelessWidget {
  const Aboute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ກ່ຽວກັບ"),
        backgroundColor: const Color(0xFF68C3AC),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(height: 16.0),
              SingleChildScrollView(
                child: Column(
                  children: [
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
                                  Image.asset(
                                    'assets/images/Wall.png',
                                    width: 150,
                                    height: 150,
                                  ),
                                  Expanded(
                                    child: Text(
                                        'ແອັບພິເຄຊັ່ນກະເປົາເງິນ (Wallet App) ສາມາຊ່ວຍທ່ານຈັດການເລື່ອງການເງິນເຊັ່ນລາຍຮັບລາຍຈ່າຍແລະສະຫຼຸບຍອດຂອງແຕ່ລະເດືອນເພື່ອເພີ່ມປະສິດທິພາບການບໍລິຫານຈັດການເງິນສ່ວນບຸກຄົນ'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Development",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 24),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Card(
                        color: Color(0xFFD9D9D9),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Image.asset('assets/images/teac.png',
                                  width: 100, height: 100),
                              Text("ປອ ສະຫວາດ ໄຊບັນດິດ",style:TextStyle(fontWeight: FontWeight.bold),),
                              Text("(ອາຈານປະຈຳວິຊາ)"),
                              SizedBox(height: 8.0),
                              Container(
                                child: Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Row(
                                     mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'assets/images/sin.jpg',
                                      width: 80,
                                      height: 80,
                                    ),
                                    Expanded(
                                      child: Column(
                                        children: [
                                          Text(
                                              'ທ້າວ ສິນໄຊ ທະວີສິງ'),
                                          Text(
                                              '       Developer & Design'),
                                        ],
                                      ),
                                    ),
                                  ],
                                  ),
                                ),
                              ),
                              Container(
                                child: Padding(
                                   padding: EdgeInsets.all(5),
                                  child: Row(
                                     mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'assets/images/kiet.jpeg',
                                      width: 80,
                                      height: 80,
                                    ),
                                    Expanded(
                                      child: Column(
                                        children: [
                                          Text(
                                              'ທ້າວ ກຽດຕິສັກ ຈັນໂພວົງ'),
                                          Text(
                                              'Information'),
                                        ],
                                      ),
                                    ),
                                  ],
                                  ),
                                ),
                              ),
                              Container(
                                child: Padding(
                                   padding: EdgeInsets.all(5),
                                  child: Row(
                                     mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'assets/images/viet.jpeg',
                                      width: 80,
                                      height: 80,
                                    ),
                                    Expanded(
                                      child: Column(
                                        children: [
                                          Text(
                                              'ທ້າວ ໜູຮັກ ຕານສີດາ'),
                                          Text(
                                              'Content Writer'),
                                        ],
                                      ),
                                    ),
                                  ],
                                  ),
                                ),
                              ),
                              Container(
                                child: Padding(
                                   padding: EdgeInsets.all(5),
                                  child: Row(
                                     mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'assets/images/mode.jpg',
                                      width: 80,
                                      height: 80,
                                    ),
                                    Expanded(
                                      child: Column(
                                        children: [
                                          Text(
                                              'ທ້າວ ສຸກສັນ ໄຊຍະວົງສາ'),
                                          Text(
                                              'Content Writer'),
                                        ],
                                      ),
                                    ),
                                  ],
                                  ),
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
            ],
          ),
        ),
      ),
    );
  }
}
