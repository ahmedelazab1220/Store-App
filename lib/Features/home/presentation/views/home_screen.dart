import 'package:flutter/material.dart';
import 'package:storeapp/Core/utils/colors.dart';
import 'package:storeapp/Features/home/presentation/views/widgets/home_screen_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff1A48BF), Color(0xff731BCD)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
          ),
        ),
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'الرئيسيه',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.discount),
              label: 'الخصومات',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'السلة',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'حسابي',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          onTap: _onItemTapped,
          backgroundColor: Colors.transparent,
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
        ),
      ),
      body: const HomeScreenBody(),
      endDrawer: const Drawer(
        child: Column(),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: HomeScreen(),
  ));
}
