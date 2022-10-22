import 'package:flutter/material.dart';
import 'package:postcrap/screens/nav/savings.dart';
import 'package:postcrap/screens/nav/home.dart';
import 'package:postcrap/screens/nav/profile.dart';
import 'package:postcrap/screens/nav/market.dart';
import 'package:postcrap/shared/constants.dart';

class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {

   final List<Widget> _widgetpages = const[
    Home(), Market(), Savings(), Profile()
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
            showSelectedLabels: true,
            showUnselectedLabels: true,
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
            items: [
              BottomNavigationBarItem(
                icon: const ImageIcon(AssetImage('assets/images/home_inactive.png'),
                size: 21,
                ),
                activeIcon: SizedBox(
                    height: 21,
                    width: 21,
                    child: Image.asset('assets/images/home.png')),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                  icon: const ImageIcon(AssetImage('assets/images/market_inactive.png'), 
                  size: 21,),
                  activeIcon: SizedBox(
                    height: 21,
                    width: 21,
                    child: Image.asset('assets/images/market.png')),
                  label: 'Market'),
              
              BottomNavigationBarItem(
                  icon: const ImageIcon(AssetImage('assets/images/wallet_inactive.png'),
                  size: 21,),
                  activeIcon: SizedBox(
                    height: 21,
                    width: 21,
                    child: Image.asset('assets/images/wallet.png')),
                  label: 'Savings'),
              
                BottomNavigationBarItem(
                  icon: const ImageIcon(AssetImage('assets/images/more_inactive.png'), size: 21,),
                  activeIcon: SizedBox(
                    height: 21,
                    width: 21,
                    child: Image.asset('assets/images/settings.png')),
                  label: 'More'),
            ],
            currentIndex: _selectedTabIndex,
            onTap: onItemTap,

          ),
        ),
      ),
    );
  }
}
