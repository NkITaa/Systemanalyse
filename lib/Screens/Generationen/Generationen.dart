import 'package:flutter/material.dart';

import '../../Objects/JSON_Deserialization/Marke.dart';
import '../../Objects/JSON_Deserialization/modell.dart';

import '../Treibstoff/Treibstoff.dart';
import 'Components/ListTile.dart';
import 'Components/AppBar.dart';

class Generationen extends StatelessWidget {
  final Modell? modell;
  final Marke? marke;
  const Generationen({Key? key, this.modell, this.marke}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F6F6),
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
            shrinkWrap: true,
            itemCount: this.modell!.generationen!.length,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Treibstoff(
                              marke: marke,
                              modell: modell,
                              generation: this.modell!.generationen![index],
                            )));
              },
              child: MyListTile(
                marke: marke,
                modell: modell,
                index: index,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
