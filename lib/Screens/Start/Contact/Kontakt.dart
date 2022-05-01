import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';
import "package:flutter/material.dart";

class Kontakt extends StatefulWidget {
  @override
  State<Kontakt> createState() => _KontaktState();
}

class _KontaktState extends State<Kontakt> {
  final controllerMessage = TextEditingController();
  Widget buildTextField({
    required String title,
    required TextEditingController controller,
    int maxLines = 1,
  }) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          TextField(
            controller: controller,
            maxLines: maxLines,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: const BorderSide(width: 0.0),
                borderRadius: BorderRadius.circular(25.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color(0xFF3FC1C9), width: 2.0),
                borderRadius: BorderRadius.circular(25.0),
              ),
            ),
          )
        ],
      );
  final snackBar = SnackBar(
    duration: Duration(seconds: 5),
    content: Container(
      //color: Colors.white,
      decoration: BoxDecoration(
          color: Color(0xFF03DAC6), borderRadius: BorderRadius.circular(20)),
      margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "\nZu wenig Zeichen!\n\n• Mindestanzahl: 30\n",
          textAlign: TextAlign.center,
          textScaleFactor: 1.3,
        ),
      ),
    ),
    backgroundColor: Colors.transparent,
    elevation: 1000,
    behavior: SnackBarBehavior.floating,
  );
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Container(
        color: Color(0xFF3FC1C9),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(22))),
            width: MediaQuery.of(context).size.width * 0.97,
            height: MediaQuery.of(context).size.height * 0.9,
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.11,
                      width: MediaQuery.of(context).size.width * 0.608,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Text(
                          "Schwachstelle teilen oder neues Modell anfordern?",
                          textScaleFactor: 1.5,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.01,
                      width: MediaQuery.of(context).size.width * 0.729,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.92,
                      child: buildTextField(
                        title: "Schreibe uns einfach eine Mail!",
                        controller: controllerMessage,
                        maxLines: 8,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.025,
                ),
                Container(
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xFF03DAC6)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0)),
                      ),
                    ),
                    onPressed: () => controllerMessage.text.length > 20
                        ? launchEmail(
                            toEmail: "info@auto-lab.ch",
                            subject: "Feedback",
                            message: controllerMessage.text,
                          )
                        : ScaffoldMessenger.of(context).showSnackBar(snackBar),
                    child: Text(
                      "Abschicken",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFF03DAC6)),
                      borderRadius: BorderRadius.all(Radius.circular(22))),
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.851,
                  child: Text(
                    "\nDu schreibst uns wenn du: \n\n• dein Wissen teilen möchtest\n• dein Modell nicht gefunden hast\n• einen Bug gefunden hast\n",
                    textScaleFactor: 1.3,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future launchEmail({
    required String toEmail,
    required String subject,
    required String message,
  }) async {
    final url =
        "mailto:$toEmail?subject=${Uri.encodeFull(subject)}&body=${Uri.encodeFull(message)}";
    if (await canLaunch(url)) {
      await launch(url);
    }
  }
}
