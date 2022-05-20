import 'package:flutter/material.dart';
import '../../Modelle/Modelle.dart';
import 'Components/TilesHomescreen.dart';

class BodyHomeScreen extends StatefulWidget {
  final marken;
  const BodyHomeScreen({Key? key, this.marken}) : super(key: key);

  @override
  _BodyHomeScreenState createState() => _BodyHomeScreenState();
}

class _BodyHomeScreenState extends State<BodyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF3FC1C9),
      child: Center(
        child: Column(
          children: [
            Container(
                width: MediaQuery.of(context).size.width * 0.97,
                decoration: BoxDecoration(
                    color: Color(0xFFF6F6F6),
                    borderRadius: BorderRadius.all(Radius.circular(22))),
                child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: widget.marken.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) => TilesHomeScreen(
                    marke: widget.marken[index],
                    press: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Modelle(
                            marke: widget.marken[index],
                          ),
                        )),
                  ),
                )),
            Container(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
