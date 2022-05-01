import 'package:flutter/material.dart';

import '../../../Objects/JSON_Deserialization/Marke.dart';
import '../../../Objects/JSON_Deserialization/modell.dart';
import '../../../Objects/JSON_Deserialization/schwachstellen.dart';
import 'Components/ExpansionList.dart';

class Body extends StatefulWidget {
  final Marke? marke;
  final Modell? modell;
  final Schwachstellen? unterscheidung;
  const Body({Key? key, this.marke, this.modell, this.unterscheidung})
      : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool toggle = true;
  void _toggle() {
    setState(() {
      toggle = !toggle;
    });
  }

  _getToggleChild() {
    if (toggle) {
      return Column(
        children: [
          Container(height: MediaQuery.of(context).size.height * 0.05),
          Container(
            width: MediaQuery.of(context).size.width * 0.95,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(22)),
            child: Column(
              children: [
                Container(height: MediaQuery.of(context).size.height * 0.01),
                Text("Schwerpunkte", textScaleFactor: 1.6),
                Container(height: MediaQuery.of(context).size.height * 0.02),
                Container(
                  width: MediaQuery.of(context).size.width * 0.75,
                  child: Text(
                    this.widget.unterscheidung!.wholeText!,
                    textAlign: TextAlign.left,
                    textScaleFactor: 1.2,
                  ),
                ),
                Container(height: MediaQuery.of(context).size.height * 0.05),
                Row(children: [
                  SizedBox(width: MediaQuery.of(context).size.width * 0.16),
                  Text("Abschnitt bis zum Neustart löschen"),
                  IconButton(
                    icon: Icon(
                      Icons.delete,
                      color: Color(0xFF03DAC6),
                    ),
                    onPressed: () {
                      _toggle();
                    },
                  ),
                ]),
              ],
            ),
          ),
          Container(height: MediaQuery.of(context).size.height * 0.3),
        ],
      );
    } else {
      return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            color: Color(0xFF3FC1C9),
          ),
          Container(
            color: Color(0xFF3FC1C9),
            child: Row(
              children: [
                Container(width: MediaQuery.of(context).size.width * 0.04),
                Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.14,
                  child: Image.asset(widget.marke!.image),
                ),
                Container(width: MediaQuery.of(context).size.width * 0.04),
                Container(
                  height: MediaQuery.of(context).size.height * 0.13,
                  width: MediaQuery.of(context).size.width -
                      MediaQuery.of(context).size.width * 0.22,
                  alignment: Alignment(-0.3, 0),
                  child: Text(
                    widget.marke!.title + widget.modell!.title + "      ",
                    textScaleFactor: 1.8,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Color(0xFF3FC1C9),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(22),
                  bottomLeft: Radius.circular(22),
                )),
            child: SingleChildScrollView(
              child: Theme(
                data: Theme.of(context).copyWith(
                  dividerColor: Colors.transparent,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFF6F6F6),
                    borderRadius: BorderRadius.circular(22),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: ExpansionTile(
                    textColor: Color(0xff6B705C),
                    iconColor: Color(0xff6B705C),
                    title: Center(
                        child: Text(
                      "Generelles Vorgehen",
                      textScaleFactor: 1.4,
                    )),
                    children: [ExpansionList()],
                  ),
                ),
              ),
            ),
          ),
          Center(child: _getToggleChild())
        ],
      ),
    );
  }
}
