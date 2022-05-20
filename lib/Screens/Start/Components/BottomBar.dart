import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  final void Function(int _selectedIndex) onItemTap;
  final int selectedIndex;
  final hiding;
  const BottomBar(this.onItemTap, this.selectedIndex, this.hiding);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: hiding.visible,
      builder: (context, bool value, child) => AnimatedContainer(
        duration: Duration(milliseconds: 500),
        height: value ? kBottomNavigationBarHeight : 0.0,
        child: Wrap(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black38, spreadRadius: 0, blurRadius: 10),
                ],
              ),
              child: ClipRRect(
                child: BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  iconSize: 30,
                  backgroundColor: Colors.white,
                  selectedItemColor: Color(0xFF3FC1C9),
                  unselectedItemColor: Color(0xff6B705C),
                  selectedFontSize: 15,
                  unselectedFontSize: 0,
                  items: const <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                        icon: Icon(Icons.favorite), label: ""),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home_rounded), label: ""),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.contact_page_outlined), label: ""),
                  ],
                  currentIndex: selectedIndex,
                  onTap: onItemTap,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
