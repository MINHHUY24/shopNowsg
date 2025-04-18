
import 'package:ban_ao/pages/cart_page.dart';
import 'package:ban_ao/pages/home_page.dart';
import 'package:flutter/material.dart';

class LayoutPage extends StatefulWidget {
   LayoutPage({super.key});

  @override
  State<LayoutPage> createState() => _LayoutPageState();

  final List _pages = [
     HomePage(),
     CartPage(),
  ];

  int _selectedIndex = 0;

}

class _LayoutPageState extends State<LayoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: widget._pages[widget._selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.teal,
        selectedFontSize: 15,
        currentIndex: widget._selectedIndex,
          onTap: (index){
            setState(() {
              widget._selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: "Cart",
            ),
          ],
      ),
    );
  }
}
