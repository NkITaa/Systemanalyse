import 'package:flutter/material.dart';
import '../../Objects/JSON_Deserialization/Marke.dart';
import '../Generationen/Generationen.dart';
import '../Treibstoff/Treibstoff.dart';
import 'Components/ListTile.dart';
import 'Components/AppBar.dart';

class Modelle extends StatelessWidget {
  final Marke? marke;
  const Modelle({Key? key, this.marke}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF6F6F6),
        appBar: MyAppBar(
          marke: marke,
        ),
        body: Container(
          color: Color(0xFF3FC1C9),
          child: Container(
            decoration: BoxDecoration(
                color: Color(0xFFF6F6F6),
                borderRadius: BorderRadius.vertical(top: Radius.circular(22))),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: marke!.modelle.length,
              itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    if (marke!.modelle[index].generationen!.length > 1) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Generationen(
                                    modell: this.marke!.modelle[index],
                                    marke: marke,
                                  )));
                    } else {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Treibstoff(
                                    marke: marke,
                                    modell: this.marke!.modelle[index],
                                    generation:
                                        marke!.modelle[index].generationen![0],
                                  )));
                    }
                  },
                  child: MyListTile(
                    marke: marke,
                    index: index,
                  )),
            ),
          ),
        ));
  }
}
