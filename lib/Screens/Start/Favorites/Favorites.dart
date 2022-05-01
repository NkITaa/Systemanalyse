import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'Child/FavoritesDetailsPage.dart';
import 'Components/FavoritesTiles.dart';

class Favorites extends StatefulWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  _FavoritesState createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  bool toggle = false;
  final utitleBox = Hive.box("utitle");
  final vimageBox = Hive.box("vimage");
  final mimageBox = Hive.box("mimage");
  final mtitleBox = Hive.box("mtitle");
  final mdtitleBox = Hive.box("mdtitle");
  final psBox = Hive.box("ps");

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xFF3FC1C9),
        child: Center(
            child: Container(
                width: MediaQuery.of(context).size.width * 0.97,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    color: Color(0xFFF6F6F6),
                    borderRadius: BorderRadius.all(Radius.circular(22))),
                child: utitleBox.length > 0
                    ? _buildGridView()
                    : Column(children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.37,
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25)),
                          child: Column(
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.11,
                                width:
                                    MediaQuery.of(context).size.width * 0.608,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: Center(
                                  child: Text(
                                    "Noch keine Modelle gespeichert ",
                                    textScaleFactor: 1.5,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.03,
                                width:
                                    MediaQuery.of(context).size.width * 0.729,
                              ),
                              Image.asset("Assets/Images/OnBoardingc.png"),
                            ],
                          ),
                        ),
                      ]))));
  }

  GridView _buildGridView() {
    return GridView.builder(
      itemCount: utitleBox.length,
      scrollDirection: Axis.vertical,
      physics: ClampingScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) =>
          Stack(alignment: AlignmentDirectional.topCenter, children: [
        TilesFavorites(
          utitle: utitleBox.getAt(index),
          vimage: vimageBox.getAt(index),
          mimage: mimageBox.getAt(index),
          mtitle: mtitleBox.getAt(index),
          mdtitle: mdtitleBox.getAt(index),
          ps: psBox.getAt(index),
          press: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FavoritesDetails(
                  utitle: utitleBox.getAt(index),
                  vimage: vimageBox.getAt(index),
                  mimage: mimageBox.getAt(index),
                  mtitle: mtitleBox.getAt(index),
                  mdtitle: mdtitleBox.getAt(index),
                  ps: psBox.getAt(index),
                ),
              )),
        ),
        Positioned(
          right: 10,
          child: IconButton(
            onPressed: () {
              Hive.box("utitle").deleteAt(index);
              Hive.box("vimage").deleteAt(index);
              Hive.box("mimage").deleteAt(index);
              Hive.box("mtitle").deleteAt(index);
              Hive.box("mdtitle").deleteAt(index);
              Hive.box("ps").deleteAt(index);
              setState(() {
                // Here we changing the icon.
                toggle = !toggle;
              });
            },
            color: Color(0xFF03DAC6),
            icon: toggle ? Icon(Icons.delete) : Icon(Icons.delete),
          ),
        ),
      ]),
    );
  }
}
