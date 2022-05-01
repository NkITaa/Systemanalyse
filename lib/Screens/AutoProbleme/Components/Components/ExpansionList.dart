import 'package:flutter/material.dart';

import '../../../../Objects/FlutterObjects/GenerelleInfo.dart';
import 'Components/TypeAWidgetBody.dart';
import 'Components/TypeBWidgetBody.dart';

class ExpansionList extends StatefulWidget {
  final GenerelleInfo? info;

  const ExpansionList({
    Key? key,
    this.info,
  }) : super(key: key);
  @override
  _ExpansionListState createState() => _ExpansionListState();
}

class _ExpansionListState extends State<ExpansionList> {
  Widget _buildListPanel() {
    return Container(
      child: Theme(
        data: Theme.of(context).copyWith(
          cardColor: Color(0xFFF6F6F6),
        ),
        child: ExpansionPanelList(
          dividerColor: Colors.transparent,
          elevation: 0,
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              generelleInfos[index].isExpanded = !isExpanded;
            });
          },
          children: generelleInfos.map<ExpansionPanel>((GenerelleInfo info) {
            return ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return ListTile(
                    title: !isExpanded
                        ? Text(
                            info.headerValue!,
                          ) //code if above statement is true
                        : Text(
                            info.headerValue!,
                            textScaleFactor: 1.3,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                  );
                },
                body: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25)),
                    child: Column(
                      children: [
                        info.id == 7
                            ? TypeBWidgetBody(
                                info: info,
                              )
                            : TypeAWidgetBody(
                                info: info,
                              ),
                        Row(children: [
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.16),
                          Text("Abschnitt bis zum Neustart löschen"),
                          IconButton(
                            icon: Icon(
                              Icons.delete,
                              color: Color(0xFF03DAC6),
                            ),
                            onPressed: () {
                              setState(() {
                                generelleInfos.removeWhere(
                                    (currentItem) => info == currentItem);
                              });
                            },
                          )
                        ]),
                      ],
                    ),
                  ),
                ),
                isExpanded: info.isExpanded);
          }).toList(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: _buildListPanel(),
      ),
    );
  }
}
