import 'dart:async';
import 'package:flutter/material.dart';
import '../auth/Login.dart';
class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  void initState() {
    super.initState();
    // ตั้งเวลา 3 วินาทีสำหรับหน้าจอ Preloading
    Timer(Duration(seconds: 2), () {
      // เมื่อครบเวลาให้ไปยังหน้าหลัก
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => Loging()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/Logo.png'), // แสดงรูปภาพจาก assets
      ),
    );
  }
}