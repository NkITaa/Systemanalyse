import 'package:flutter/material.dart';

import '../../../../Objects/JSON_Deserialization/Marke.dart';

class TilesHomeScreen extends StatelessWidget {
  final Marke? marke;
  final Function? press;
  const TilesHomeScreen({Key? key, this.marke, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press as void Function()?,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.18,
              width: MediaQuery.of(context).size.width * 0.32,
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 20,
                      right: 8,
                      left: 8,
                    ),
                  ),
                  Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.086,
                        width: MediaQuery.of(context).size.width * 0.225,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                      ),
                      Positioned.fill(
                        child: Image.asset(marke!.image),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.017857,
                  ),
                  Text(
                    marke!.title,
                    textScaleFactor: 1.2,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
