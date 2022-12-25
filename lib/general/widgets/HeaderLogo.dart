import 'package:hwzn_base/res.dart';
import 'package:flutter/material.dart';

class HeaderLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 50),
      child: Image(
        height: 120,
        width: 140,
        image: AssetImage(Res.logo),
        fit: BoxFit.contain,
      ),
    );
  }
}
