import 'package:flutter/material.dart';
import 'package:hwzn_base/res.dart';

class HeaderLogo extends StatelessWidget {
  const HeaderLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric( horizontal: 50),
      child: Image(
        height: MediaQuery.of(context).size.height * 0.25,
        width: MediaQuery.of(context).size.width * 0.55,
        image: const AssetImage(Res.logo),
        fit: BoxFit.contain,
      ),
    );
  }
}
