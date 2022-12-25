import 'package:auto_route/auto_route.dart';
import 'package:hwzn_base/general/constants/MyColors.dart';
import 'package:flutter/material.dart';
import 'package:hwzn_base/general/widgets/MyText.dart';

class AuthHeaderText extends StatelessWidget {
  final String title;
  final bool showBack;

  const AuthHeaderText({required this.title, this.showBack=true});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MyText(
          title: title,
          size: 17,
          color: MyColors.primary
        ),
        Offstage(
          offstage: !showBack,
          child: IconButton(
              icon: Icon(
                Icons.arrow_forward,
                color: MyColors.black,
                size: 25,
              ),
              onPressed: ()=> AutoRouter.of(context).pop(),
          ),
        )
      ],
    );
  }
}
