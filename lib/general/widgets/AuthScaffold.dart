import 'package:hwzn_base/general/constants/MyColors.dart';
import 'package:flutter/material.dart';

class AuthScaffold extends StatelessWidget {
  final Widget body;
  final PreferredSizeWidget? appBar;

  const AuthScaffold({
    Key? key,
    required this.body,
    this.appBar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: appBar,
      body: body,
    );
  }
}
