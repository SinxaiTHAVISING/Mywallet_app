import 'package:flutter/material.dart';
import 'Login.dart';
class Register extends StatelessWidget {
  const Register({super.key});

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
                    'Sign up',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'ຊື່ ແລະ ນາມສະກຸນ',
                      border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(30)
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'ເບີໂທ',
                      border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(30)
                      ),
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
                      //  Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (context) => const Launcher(),
                      //   ),
                      // );
                    },
                    child: Text('ສະໜັກສະມາຊິກ',style:TextStyle(fontSize:16,color:Colors.black)),
                    style: ElevatedButton.styleFrom(
                      // primary: Colors.black, // Button color
                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // To Launcher
                      //  Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (context) => const Launcher(),
                      //   ),
                      // );
                    },
                    child: Text('ລົງທະບຽນຜ່ານBcel One',style:TextStyle(fontSize:16,color:Colors.black)),
                    style: ElevatedButton.styleFrom(
                      // primary: Colors.black, // Button color
                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    ),
                  ),
                  Row(
                    children: [
                      Text("ທ່ານມີບັນຊີແລ້ວ  \r\r\r\r\r\r"),
                      SizedBox(height: 10),
                      TextButton(
                        onPressed: () {
                          //
                           Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const Loging(),
                        ),
                      );
                        },
                        child: Text('ເຂົ້າສູ່ລະບົບ',style:TextStyle(color:Colors.white)),
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