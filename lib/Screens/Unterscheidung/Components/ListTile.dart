import 'package:flutter/material.dart';
import '../../../Objects/JSON_Deserialization/leistung.dart';

class MyListTile extends StatelessWidget {
  final Leistung? leistung;
  final int index;
  const MyListTile({Key? key, this.leistung, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height * 0.05,
      width: MediaQuery.of(context).size.width * 0.9,
      child: Align(
        alignment: Alignment.center,
        child: Text(
          leistung!.unterschiede![index].difference ?? '',
          textScaleFactor: 1.4,
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }
}
