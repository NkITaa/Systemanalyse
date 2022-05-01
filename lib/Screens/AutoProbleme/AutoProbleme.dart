import 'package:flutter/material.dart';
import '../../Objects/JSON_Deserialization/Marke.dart';
import '../../Objects/JSON_Deserialization/generation.dart';
import '../../Objects/JSON_Deserialization/modell.dart';
import '../../Objects/JSON_Deserialization/schwachstellen.dart';
import 'Components/AppBar.dart';

import 'Components/Body.dart';

class AutoProbleme extends StatefulWidget {
  final Marke? marke;
  final Modell? modell;
  final Generation? generation;
  final String? leistung;
  final Schwachstellen? unterscheidung;
  const AutoProbleme(
      {Key? key,
      this.marke,
      this.modell,
      this.generation,
      this.unterscheidung,
      this.leistung})
      : super(key: key);

  @override
  _AutoProblemeState createState() => _AutoProblemeState();
}

class _AutoProblemeState extends State<AutoProbleme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF3FC1C9),
        extendBodyBehindAppBar: true,
        appBar: MyAppBar(
          marke: widget.marke,
          modell: widget.modell,
          generation: widget.generation,
          unterscheidung: widget.unterscheidung,
          leistung: widget.leistung,
        ),
        body: CustomScrollView(slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Color(0xFF3FC1C9),
            expandedHeight: MediaQuery.of(context).size.height * 0.2,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color(0xffFFE8D6),
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(30))),
                child: ClipRRect(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(30)),
                  child: FittedBox(
                    child: Image.asset(widget.generation!.image!),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: Color(0xFFF6F6F6),
              child: Body(
                marke: widget.marke!,
                modell: widget.modell!,
                unterscheidung: this.widget.unterscheidung!,
              ),
            ),
          )
        ]));
  }
}
