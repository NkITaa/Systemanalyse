import 'package:flutter/material.dart';
import '../../Objects/JSON_Deserialization/Marke.dart';
import '../../Objects/JSON_Deserialization/generation.dart';
import '../../Objects/JSON_Deserialization/modell.dart';
import '../Leistung/Leistung.dart';
import 'Components/ListTile.dart';
import 'Components/AppBar.dart';

class Treibstoff extends StatelessWidget {
  final Marke? marke;
  final Modell? modell;
  final Generation? generation;
  const Treibstoff({Key? key, this.marke, this.modell, this.generation})
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
              itemCount: this.generation!.treibstoffe!.length,
              itemBuilder: (context, index) =>
                  this.generation!.treibstoffe![index].leistungen!.length > 0
                      ? GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Leistung(
                                          marke: marke,
                                          modell: modell,
                                          generation: generation,
                                          treibstoff: this
                                              .generation!
                                              .treibstoffe![index],
                                        )));
                          },
                          child: MyListTile(
                            generation: generation,
                            index: index,
                          ))
                      : Container()),
        ),
      ),
    );
  }
}
