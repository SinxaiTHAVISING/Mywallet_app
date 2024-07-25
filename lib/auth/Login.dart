import 'package:flutter/material.dart';
import 'package:mywallet/Launcher.dart';
import 'package:mywallet/auth/Register.dart';

class Loging extends StatelessWidget {
  const Loging({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
        backgroundColor: const Color(0xFF68C3AC),
      ),
      body: Container(
        color:Color(0xFF68C3AC),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(0xFF68C3AC),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'My Wallet',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Sign in',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'ອີເມວ',
                      border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(30)
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'ລະຫັດຜ່ານ',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                      ),
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // To Launcher
                       Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const Launcher(),
                        ),
                      );
                    },
                    child: Text('ເຂົ້າສູ່ລະບົບ',style:TextStyle(fontSize:16,color:Colors.black)),
                    style: ElevatedButton.styleFrom(
                      // primary: Colors.black, // Button color
                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(height: 10),
                      TextButton(
                        onPressed: () {
                          // To Register
                           Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const Register(),
                        ),
                      );
                        },
                        child: Text('ລົງທະບຽນ',style: TextStyle(color: Colors.black,fontSize:16),),
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextButton(
                        onPressed: () {
                          //
                        },
                        child: Text('ລືມລະຫັດຜ່ານ?',style:TextStyle(color:Colors.white)),
                        style: TextButton.styleFrom(
                          iconColor: Colors.black
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}