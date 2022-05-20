import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../../../Objects/JSON_Deserialization/Marke.dart';
import '../../../Objects/JSON_Deserialization/generation.dart';
import '../../../Objects/JSON_Deserialization/modell.dart';
import '../../../Objects/JSON_Deserialization/schwachstellen.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  final Marke? marke;
  final Modell? modell;
  final Generation? generation;
  final String? leistung;
  final Schwachstellen? unterscheidung;
  const MyAppBar(
      {Key? key,
      this.marke,
      this.modell,
      this.generation,
      this.unterscheidung,
      this.leistung})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      actions: [
        IconButton(
            onPressed: () {
              Hive.box("utitle").add(unterscheidung!.wholeText!.toString());
              Hive.box("vimage").add(generation!.image!.toString());
              Hive.box("mimage").add(marke!.image.toString());
              Hive.box("mtitle").add(marke!.title.toString());
              Hive.box("mdtitle").add(modell!.title.toString());
              Hive.box("ps").add(leistung);
              final text = "Füge hinzu";
              final snackBar = SnackBar(
                duration: Duration(milliseconds: 1250),
                content: Container(
                  //color: Colors.white,
                  decoration: BoxDecoration(
                      color: Color(0xFF03DAC6),
                      borderRadius: BorderRadius.circular(20)),
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      text,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                backgroundColor: Colors.transparent,
                elevation: 1000,
                behavior: SnackBarBehavior.floating,
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            icon: Icon(
              Icons.add,
              color: Color(0xFF03DAC6),
            ))
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
