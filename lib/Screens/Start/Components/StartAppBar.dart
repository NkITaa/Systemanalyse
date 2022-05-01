import 'package:flutter/material.dart';

class StartAppBar extends StatelessWidget {
  final int selectedIndex;
  final hiding;
  List<Widget> widgetOptions;
  var lastPressed;
  void Function()? openDrawer;
  StartAppBar(this.selectedIndex, this.hiding, this.lastPressed,
      this.widgetOptions, this.openDrawer);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final now = DateTime.now();
        final maxDuration = Duration(seconds: 2);
        final isWarning =
            lastPressed == null || now.difference(lastPressed!) > maxDuration;

        if (isWarning) {
          lastPressed = DateTime.now();

          final snackBar = SnackBar(
            content: Container(
              //color: Colors.white,
              decoration: BoxDecoration(
                  color: Color(0xFF03DAC6),
                  borderRadius: BorderRadius.circular(20)),
              margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Doppelklick zum verlassen',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            backgroundColor: Colors.transparent,
            elevation: 1000,
            behavior: SnackBarBehavior.floating,
            duration: maxDuration,
          );

          ScaffoldMessenger.of(context)
            ..removeCurrentSnackBar()
            ..showSnackBar(snackBar);

          return false;
        } else {
          return true;
        }
      },
      child: CustomScrollView(
        controller: hiding.controller,
        slivers: [
          SliverAppBar(
            backgroundColor: Color(0xFF3FC1C9),
            automaticallyImplyLeading: false,
            elevation: 0,
            title: Text(
              "AutoLab",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            leading: IconButton(
              onPressed: () {
                openDrawer?.call();
                // _key.currentState!.openEndDrawer();
              },
              icon: Icon(
                Icons.view_headline_rounded,
              ),
            ),
            centerTitle: true,
            expandedHeight: 120,
            floating: false,
            flexibleSpace: FlexibleSpaceBar(
              title: selectedIndex == 1
                  ? Text("Marke auswählen")
                  : selectedIndex == 2
                      ? Text("Schreibe uns!")
                      : Text("Deine Modelle"),
              centerTitle: true,
            ),
          ),
          SliverToBoxAdapter(child: widgetOptions.elementAt(selectedIndex)),
        ],
      ),
    );
  }
}
