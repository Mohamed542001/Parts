import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hwzn_base/general/constants/MyColors.dart';
import 'package:hwzn_base/general/widgets/MyText.dart';

class BuildAuthAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Function()? onBack;
  final bool? isCenterTitle;
  final bool? haveLeading;

  const BuildAuthAppBar({
    Key? key,
    this.title,
    this.onBack,
    this.isCenterTitle,
    this.haveLeading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      centerTitle: isCenterTitle == true ? true : false,
      title: title != null
          ? MyText(
              title: title ?? "",
              color: MyColors.black,
              size: 15,
            )
          : null,
      backgroundColor: Colors.transparent,
      leading: haveLeading == true
          ? InkWell(
              onTap: onBack ?? AutoRouter.of(context).pop,
              child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: MyColors.primary.withOpacity(.2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 18,
                    color: MyColors.blackOpacity,
                  )),
            )
          : Container(),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(65);
}
