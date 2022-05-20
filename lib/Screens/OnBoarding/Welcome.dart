import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:AutoLab/Screens/OnBoarding/policy.dart';

import '../../Objects/Constants/constants.dart';

class Welcome1 extends StatefulWidget {
  const Welcome1({Key? key}) : super(key: key);

  @override
  _Welcome1State createState() => _Welcome1State();
}

class _Welcome1State extends State<Welcome1> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: MediaQuery.of(context).size.height * 0.012,
      width: isActive
          ? MediaQuery.of(context).size.width * 0.05837
          : MediaQuery.of(context).size.width * 0.0389,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Color(0xFF7B51D3),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [
                  0.1,
                  0.4,
                  0.7,
                  0.9
                ],
                    colors: [
                  Color(0xFF7EC3F8),
                  Color(0xFF3FC1C9),
                  Color(0xFF3FC1C9),
                  Color(0xFF3594DD),
                ])),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return PolicyDialog();
                          },
                        );
                      },
                      child: Text(
                        "Skip",
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.745,
                    child: PageView(
                      physics: ClampingScrollPhysics(),
                      controller: _pageController,
                      onPageChanged: (int page) {
                        setState(() {
                          _currentPage = page;
                        });
                      },
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(40.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Center(
                                child: Image(
                                  image: AssetImage(
                                      "Assets/Images/OnBoardinga.png"),
                                  height:
                                      MediaQuery.of(context).size.height * 0.4,
                                  width: MediaQuery.of(context).size.width *
                                      0.7297,
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.045,
                              ),
                              Text(
                                "Suche Modelle ",
                                style: kTitleStyle,
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.width * 0.0225,
                              ),
                              Text(
                                  "aus einer Datenbank mit fast 1000 Fahrzeugen aus",
                                  style: kSubtitleStyle)
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(40.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Center(
                                child: Image(
                                  image: AssetImage(
                                      "Assets/Images/OnBoardingb.png"),
                                  height:
                                      MediaQuery.of(context).size.height * 0.4,
                                  width: MediaQuery.of(context).size.width *
                                      0.7297,
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.045,
                              ),
                              Text("Identifiziere Schwachstellen",
                                  style: kTitleStyle),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.width * 0.0225,
                              ),
                              Text(
                                  "des Fahrzeuges, welches du dir anlegen möchtest",
                                  style: kSubtitleStyle)
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(40.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Center(
                                child: Image(
                                  image: AssetImage(
                                      "Assets/Images/OnBoardingc.png"),
                                  height:
                                      MediaQuery.of(context).size.height * 0.38,
                                  width: MediaQuery.of(context).size.width *
                                      0.7297,
                                ),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.045,
                              ),
                              Text("Kaufe sicher deinen Gebrauchten",
                                  style: kTitleStyle),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.width * 0.0225,
                              ),
                              Text(
                                "mithilfe der Tools, die wir dir zur Verfügung stellen",
                                style: kSubtitleStyle,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _buildPageIndicator(),
                  ),
                  _currentPage != _numPages - 1
                      ? Expanded(
                          child: Align(
                          alignment: FractionalOffset.bottomRight,
                          child: TextButton(
                            onPressed: () async {
                              _pageController.nextPage(
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.ease);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "Weiter",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                  ),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width *
                                      0.0243,
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                  size: 30.0,
                                ),
                              ],
                            ),
                          ),
                        ))
                      : Text("")
                ],
              ),
            ),
          ),
        ),
        bottomSheet: _currentPage == _numPages - 1
            ? Container(
                height: MediaQuery.of(context).size.height * 0.09,
                width: double.infinity,
                color: Color(0xFF3594DD),
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return PolicyDialog();
                      },
                    );
                  },
                  child: Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.09,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(22)),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Text(
                          "Los Gehts",
                          textScaleFactor: 2.3,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            : Text(""),
      ),
    );
  }
}
