import 'package:flutter/material.dart';

class FristPage extends StatefulWidget {
  const FristPage({Key? key}) : super(key: key);

  @override
  State<FristPage> createState() => _FristPageState();
}

class _FristPageState extends State<FristPage> {
  int _selectedIndex = 0; // 선택된 페이지
  void _onItemTapped(int index) {
    // 클릭시 실행시킬 함수
    _selectedIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        iconSize: 24,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.search), label: '0'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: '1'),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: '2'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: '3'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: '4'),
        ],
      ),
    );
  }
}
