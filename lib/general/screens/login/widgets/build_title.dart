part of'login_widgets_imports.dart';

class BuildTitle extends StatelessWidget {
  const BuildTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 25),
      child: MyText(
          alien: TextAlign.center,
          title: tr(context,"login"),
          color: MyColors.black,
          size: 17
      ),
    );
  }
}
