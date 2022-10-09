import 'package:flutter/material.dart';
import 'package:postcrap/screens/nav/chat.dart';
import 'package:postcrap/screens/nav/home.dart';
import 'package:postcrap/screens/nav/profile.dart';
import 'package:postcrap/screens/nav/search.dart';
import 'package:postcrap/screens/nav/upload.dart';
import 'package:postcrap/shared/constants.dart';

class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {

   final List<Widget> _widgetpages = const[
    Home(), Search(),Upload(),Chat(),Profile()
  ];

  int _selectedTabIndex = 0;
  void onItemTap(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: IndexedStack(
        index: _selectedTabIndex,
        children: 
          _widgetpages,
        
      ),

       bottomNavigationBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child:  Container(
          decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: textColor3.withOpacity(0.5),
                offset: const Offset(0.0, -0.4,),
                blurRadius: 0,
              )
            ]),
          child: BottomNavigationBar(
            backgroundColor: background,
            elevation: 1.0,
            fixedColor: textColor100,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            unselectedItemColor: textColor20,
            iconSize: 23,
            selectedLabelStyle: const TextStyle(
                fontFamily: 'Mabry-Pro',
                fontSize: 10,
                fontWeight: FontWeight.w400,
                height: 1.5),
            unselectedLabelStyle: const TextStyle(
                fontFamily: 'Mabry-Pro',
                fontSize: 10,
                fontWeight: FontWeight.w400,
                height: 1.5),
            type: BottomNavigationBarType.fixed,
            items: const[
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/home_inactive.png')),
                activeIcon: ImageIcon(AssetImage('assets/images/home_active.png')),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/search_active.png')),
                  activeIcon: ImageIcon(AssetImage('assets/images/search_inactive.png')),
                  label: 'Mining'),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/add_inactive.png')),
                  activeIcon: Icon(
                    Icons.add_circle_rounded,
                    size: 28,),
                  label: 'Post'),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/message_inactive.png')),
                  activeIcon: ImageIcon(AssetImage('assets/images/message.png')),
                  label: 'Chat'),
              
               BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/profile_inactive.png')),
                  activeIcon: ImageIcon(AssetImage('assets/images/profile_active.png')),
                  label: 'Profile'),
            ],
            currentIndex: _selectedTabIndex,
            onTap: onItemTap,

          ),
        ),
      ),
    );
  }
}
