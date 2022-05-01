import 'package:flutter/material.dart';

class TilesFavorites extends StatelessWidget {
  final Function? press;
  final utitle;
  final vimage;
  final mimage;
  final mtitle;
  final mdtitle;
  final ps;
  const TilesFavorites(
      {Key? key,
      this.press,
      this.utitle,
      this.vimage,
      this.mimage,
      this.mtitle,
      this.mdtitle,
      this.ps})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press as void Function()?,
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.23,
            width: MediaQuery.of(context).size.width * 0.45,
            decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: MediaQuery.of(context).size.width * 0.45,
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(25)),
                    child: FittedBox(
                      child: Image.asset(vimage),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.01,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.04,
                      width: MediaQuery.of(context).size.width * 0.1,
                      child: Image.asset(mimage),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.023,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                mtitle,
                                textScaleFactor: 0.88,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                ps,
                                textScaleFactor: 0.68,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          Text(
                            mdtitle,
                            textScaleFactor: 0.7,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
