import 'package:flutter/material.dart';

import '../../../Objects/JSON_Deserialization/generation.dart';

class MyListTile extends StatelessWidget {
  final Generation? generation;
  final int index;
  const MyListTile({Key? key, this.generation, required this.index})
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
          this.generation!.treibstoffe![index].title!,
          textScaleFactor: 1.4,
        ),
      ),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(16)),
    );
  }
}
