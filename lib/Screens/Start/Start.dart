import 'package:flutter/material.dart';

import 'Components/BottomBar.dart';
import 'Components/HideNavbar.dart';
import 'Components/StartAppBar.dart';
import 'Contact/Kontakt.dart';
import 'Favorites/Favorites.dart';
import 'Home/Home.dart';
import 'Components/Drawer.dart';

class HomeScreen extends StatefulWidget {
  final marken;
  const HomeScreen({Key? key, this.marken}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List<Widget> _widgetOptions;

  @override
  initState() {
    _widgetOptions = <Widget>[
      Favorites(),
      BodyHomeScreen(
        marken: widget.marken,
      ),
      Kontakt(),
    ];
  }

  DateTime? lastPressed;
  final HideNavbar hiding = HideNavbar();
  int _selectedIndex = 1;

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Color(0xFF3FC1C9),
        drawer: HomeDrawer(),
        body: StartAppBar(_selectedIndex, hiding, lastPressed, _widgetOptions,
            _scaffoldKey.currentState?.openDrawer),
        bottomNavigationBar: BottomBar(
          _onItemTap,
          _selectedIndex,
          hiding,
        ),
      ),
    );
  }
}
