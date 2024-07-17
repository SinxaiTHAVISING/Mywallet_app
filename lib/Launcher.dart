import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Screen/Wallet.dart';
import 'Screen/Income.dart';
import 'Screen/Expend.dart';
import 'Screen/Notification.dart';
import 'Screen/Aboute.dart';
import 'Screen/Profile.dart';

class Launcher extends StatefulWidget {
    static const routeName = '/';
 
    const Launcher({Key? key}) : super(key: key);
  
    @override
    State<StatefulWidget> createState() {
        return _LauncherState();
    }
}

class _LauncherState extends State<Launcher> {
    int _selectedIndex = 0;
    final List<Widget> _pageWidget = <Widget>[
        const Wallet(),
        const Income(),
        const Expend(),
        const Notifi_cation(),
        const Aboute(),
        const Profile(),
    ];
    final List<BottomNavigationBarItem> _menuBar
    =  <BottomNavigationBarItem>[
        const  BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.wallet),
            label: 'Wallet',
        ),
        const BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.funnelDollar),
            label: 'ລາຍຮັບ',
        ),
        const BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.expand),
            label: 'ລາຍຈ່າຍ',
        ),
        const BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.bell),
            label: 'ແຈ້ງເຕືອນ',
        ),
        const BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.link),
            label: 'ກ່ຽວກັບ',
        ),
        const BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.user),
            label: 'ໂປຮໄຟລ໌',
        ),
    ];
  
    void _onItemTapped(int index) {
        setState(() {
            _selectedIndex = index;
        });
    }
  
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: _pageWidget.elementAt(_selectedIndex),
            bottomNavigationBar: BottomNavigationBar(
                items: _menuBar,
                currentIndex: _selectedIndex,
                selectedItemColor: Theme
                    .of(context)
                    .primaryColor,
                unselectedItemColor: Colors.grey,
                onTap: _onItemTapped,
            ),
        );
    }
}