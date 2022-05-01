import 'package:flutter/material.dart';

import '../../../Objects/JSON_Deserialization/Marke.dart';

class MyListTile extends StatelessWidget {
  final Marke? marke;
  final int index;
  const MyListTile({Key? key, this.marke, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height * 0.05,
      width: MediaQuery.of(context).size.width * 0.9,
      child: Align(
        alignment: Alignment.center,
        child: Text(
          marke!.modelle[index].title,
          textScaleFactor: 1.4,
        ),
      ),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(16)),
    );
  }
}
