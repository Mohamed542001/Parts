import 'package:auto_route/auto_route.dart';
import 'package:hwzn_base/general/constants/MyColors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget? leading;
  final List<Widget>? actions;
  final double? size;

  const DefaultAppBar(
      {Key? key,
      required this.title,
      this.actions = const [],
      this.leading,
      this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading ??
          InkWell(
            onTap: () => AutoRouter.of(context).pop(),
            child: Icon(
              Icons.arrow_back,
              color: MyColors.white,
            ),
          ),
      elevation: 0,
      backgroundColor: MyColors.primary,
      title: Text(title),
      centerTitle: true,
      actions: actions,
      titleTextStyle: GoogleFonts.tajawal(
          color: const Color(0xffffffff),
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 19.0),
      toolbarHeight: 85,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(10),
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(size ?? 85);
}
