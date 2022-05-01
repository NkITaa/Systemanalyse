import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'Datenschutz.dart';
import 'Imprint.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({Key? key}) : super(key: key);

  void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print("Could not launch $command");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xFF3FC1C9),
        child: Column(
          children: [
            Container(
                height: MediaQuery.of(context).size.height * 0.04,
                color: Color(0xFF3FC1C9)),
            Center(
              child: Image.asset(
                "Assets/Images/Logo.png",
                width: MediaQuery.of(context).size.width * 0.3,
                height: MediaQuery.of(context).size.height * 0.15,
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.005,
              color: Colors.white,
            ),
            ListView.builder(
                shrinkWrap: true,
                primary: false,
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Column(children: [
                    ListTile(
                      leading: Icon(
                        Icons.monetization_on,
                        color: Colors.white,
                      ),
                      title: Text("Verhandlungsguide",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      onTap: () {
                        customLaunch(
                            "https://www.cosmosdirekt.de/autoversicherung/autokauf-verhandeln/");
                      },
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.vpn_key,
                        color: Colors.white,
                      ),
                      title: Text("Datenschutz",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return PolicyDialog2();
                          },
                        );
                      },
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.add_business_outlined,
                        color: Colors.white,
                      ),
                      title: Text("Imprint",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return PolicyDialog3();
                          },
                        );
                      },
                    )
                  ]);
                }),
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              color: Color(0xFF3FC1C9),
            ),
            Center(
              child:
                  Text("AutoLab V1.1", style: TextStyle(color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}
