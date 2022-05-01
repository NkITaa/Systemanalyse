import 'package:flutter/material.dart';

import '../../../Objects/JSON_Deserialization/Marke.dart';
import '../../../Objects/JSON_Deserialization/modell.dart';

class MyListTile extends StatelessWidget {
  final Modell? modell;
  final Marke? marke;
  final int index;
  const MyListTile({Key? key, this.modell, this.marke, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.01,
            width: MediaQuery.of(context).size.width * 0.9,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.05,
            width: MediaQuery.of(context).size.width * 0.9,
            child: Text(
              this.modell!.generationen![index].bigtitle!,
              textAlign: TextAlign.center,
              textScaleFactor: 1.5,
            ),
          ),
          Row(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.3,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: FittedBox(
                    child:
                        Image.asset(this.modell!.generationen![index].image!),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.05,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.5,
                child: Text(
                  this.modell!.generationen![index].title!,
                  textScaleFactor: 1.1,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
