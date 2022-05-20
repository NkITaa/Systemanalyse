import 'package:flutter/material.dart';

import 'scroll_to_hide_widget.dart';
import '../../../AutoProbleme/Components/Components/ExpansionList.dart';

class FavoritesDetails extends StatefulWidget {
  final utitle;
  final vimage;
  final mimage;
  final mtitle;
  final mdtitle;
  const FavoritesDetails({
    Key? key,
    this.utitle,
    this.vimage,
    this.mimage,
    this.mtitle,
    this.mdtitle,
    ps,
  }) : super(key: key);

  @override
  _FavoritesDetailsState createState() => _FavoritesDetailsState();
}

class _FavoritesDetailsState extends State<FavoritesDetails> {
  late ScrollController controller;
  @override
  void initState() {
    super.initState();

    controller = ScrollController();
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

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
                    widget.utitle,
                    textAlign: TextAlign.left,
                    textScaleFactor: 1.2,
                  ),
                ),
                Container(height: MediaQuery.of(context).size.height * 0.05),
                Row(children: [
                  SizedBox(width: MediaQuery.of(context).size.width * 0.16),
                  Text("Abschnitt löschen                                 "),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.11),
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
    return Scaffold(
        backgroundColor: Color(0xFFF6F6F6),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          controller: controller,
          child: Column(
            children: [
              Container(
                color: Color(0xFF3FC1C9),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.324,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Color(0xffFFE8D6),
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(30))),
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(30)),
                    child: FittedBox(
                      child: Image.asset(widget.vimage),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Container(
                color: Color(0xFF3FC1C9),
                child: Row(
                  children: [
                    Container(width: MediaQuery.of(context).size.width * 0.04),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.14,
                      child: Image.asset(widget.mimage),
                    ),
                    Container(width: MediaQuery.of(context).size.width * 0.04),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.13,
                      width: MediaQuery.of(context).size.width -
                          MediaQuery.of(context).size.width * 0.22,
                      alignment: Alignment(-0.3, 0),
                      child: Text(
                        widget.mtitle + " " + widget.mdtitle + "      ",
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
        ),
        bottomNavigationBar: ScrollToHideWidget(
          controller: controller,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.08,
            decoration: new BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(22.0),
                    topRight: const Radius.circular(22.0))),
            child: Center(
                child: Text(
              "Erinnerung: Verschleißteile kontrollieren!",
              textScaleFactor: 1.2,
              style: new TextStyle(fontWeight: FontWeight.bold),
            )),
          ),
        ));
  }
}
