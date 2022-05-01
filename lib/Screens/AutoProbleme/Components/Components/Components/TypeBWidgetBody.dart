import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../Objects/FlutterObjects/GenerelleInfo.dart';

class TypeBWidgetBody extends StatefulWidget {
  final GenerelleInfo? info;
  const TypeBWidgetBody({Key? key, this.info}) : super(key: key);

  @override
  _TypeBWidgetBodyState createState() => _TypeBWidgetBodyState();
}

class _TypeBWidgetBodyState extends State<TypeBWidgetBody> {
  void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print("Could not launch $command");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Text(
            "\nAufgrund von Haftungsgründen, verweisen wir auf den Artikel der Allianz:",
            textScaleFactor: 1.2,
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.012,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Color(0xFF03DAC6)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0)),
                ),
              ),
              onPressed: () {
                customLaunch(
                    "https://www.allianzdirect.de/kfz-versicherung/autokauf-gewaehrleistung-ratgeber/");
              },
              child: Text(
                "   Allianz   ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.015,
        ),
      ],
    );
  }
}
