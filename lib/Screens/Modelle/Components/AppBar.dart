import 'package:flutter/material.dart';

import '../../../Objects/JSON_Deserialization/Marke.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  final Marke? marke;
  const MyAppBar({
    Key? key,
    this.marke,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        Container(
          width: MediaQuery.of(context).size.width * 0.1,
          child: Image.asset(marke!.image),
        ),
      ],
      title: Text(marke!.title),
      centerTitle: true,
      backgroundColor: Color(0xFF3FC1C9),
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
