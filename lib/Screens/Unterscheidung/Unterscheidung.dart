import 'package:flutter/material.dart';

import '../../Objects/JSON_Deserialization/Marke.dart';
import '../../Objects/JSON_Deserialization/generation.dart';
import '../../Objects/JSON_Deserialization/leistung.dart';
import '../../Objects/JSON_Deserialization/modell.dart';
import '../AutoProbleme/AutoProbleme.dart';
import 'Components/ListTile.dart';
import 'Components/AppBar.dart';

class Unterscheidung extends StatelessWidget {
  final Marke? marke;
  final Modell? modell;
  final Generation? generation;
  final Leistung? leistung;
  const Unterscheidung(
      {Key? key, this.marke, this.modell, this.generation, this.leistung})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (leistung == null || leistung?.unterschiede == null) {
      return CircularProgressIndicator();
    }
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
            itemCount: leistung!.unterschiede!.length,
            itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AutoProbleme(
                        marke: marke,
                        modell: modell,
                        generation: generation,
                        leistung: leistung!.title,
                        unterscheidung: leistung!.unterschiede![index],
                      ),
                    ),
                  );
                },
                child: MyListTile(
                  leistung: leistung,
                  index: index,
                )),
          ),
        ),
      ),
    );
  }
}
