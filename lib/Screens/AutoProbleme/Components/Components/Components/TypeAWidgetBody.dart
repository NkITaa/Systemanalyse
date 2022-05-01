import 'package:flutter/material.dart';

import '../../../../../Objects/FlutterObjects/GenerelleInfo.dart';

class TypeAWidgetBody extends StatefulWidget {
  final GenerelleInfo? info;
  const TypeAWidgetBody({
    Key? key,
    this.info,
  }) : super(key: key);

  @override
  _TypeAWidgetBodyState createState() => _TypeAWidgetBodyState();
}

class _TypeAWidgetBodyState extends State<TypeAWidgetBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: EdgeInsets.only(
            left: 40.0,
          ),
          itemCount: widget.info!.expandedValueData!.length,
          itemBuilder: (context, index) {
            return CheckboxListTile(
                contentPadding: EdgeInsets.all(0),
                checkColor: Color(0xFF03DAC6),
                activeColor: Colors.white,
                title: Text(widget.info!.expandedValueData![index].title!,
                    style: TextStyle(
                        fontSize: 14,
                        decoration:
                            widget.info!.expandedValueData![index].completed!
                                ? TextDecoration.lineThrough
                                : null,
                        decorationColor:
                            widget.info!.expandedValueData![index].completed!
                                ? Color(0xFF364F6B)
                                : null)),
                value: widget.info!.expandedValueData![index].completed,
                onChanged: (value) {
                  setState(() {
// Here you toggle the checked item state
                    generelleInfos
                        .firstWhere((currentInfo) => widget.info == currentInfo)
                      ..expandedValueData![index].completed = value;
                  });
                });
          },
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            );
          },
        ),
      ],
    );
  }
}
