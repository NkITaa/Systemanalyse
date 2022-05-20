import 'package:flutter/material.dart';

import '../../Objects/JSON_Deserialization/Marke.dart';
import '../../Objects/JSON_Deserialization/generation.dart';
import '../../Objects/JSON_Deserialization/modell.dart';
import '../../Objects/JSON_Deserialization/treibstoff.dart';
import '../AutoProbleme/AutoProbleme.dart';
import '../Unterscheidung/Unterscheidung.dart';
import 'Components/ListTile.dart';
import 'Components/AppBar.dart';

class Leistung extends StatelessWidget {
  final Marke? marke;
  final Modell? modell;
  final Generation? generation;
  final Treibstoff? treibstoff;
  const Leistung(
      {Key? key, this.marke, this.modell, this.treibstoff, this.generation})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        marke: marke,
        modell: modell,
      ),
      body: Container(
        color: Color(0xFF3FC1C9),
        child: Container(
          decoration: BoxDecoration(
              color: Color(0xFFF6F6F6),
              borderRadius: BorderRadius.vertical(top: Radius.circular(22))),
          child: ListView.builder(
              itemCount: this.treibstoff!.leistungen!.length,
              itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      if (this
                              .treibstoff!
                              .leistungen![index]
                              .unterschiede!
                              .length >
                          1) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Unterscheidung(
                                      marke: marke,
                                      modell: modell,
                                      generation: generation,
                                      leistung:
                                          this.treibstoff!.leistungen![index],
                                    )));
                      } else {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AutoProbleme(
                                      marke: marke,
                                      modell: modell,
                                      generation: generation,
                                      leistung: this
                                          .treibstoff!
                                          .leistungen![index]
                                          .title,
                                      unterscheidung: this
                                          .treibstoff!
                                          .leistungen![index]
                                          .unterschiede![0],
                                    )));
                      }
                    },
                    child: MyListTile(treibstoff: treibstoff, index: index),
                  )),
        ),
      ),
    );
  }
}
