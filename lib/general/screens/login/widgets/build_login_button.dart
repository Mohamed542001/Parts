part of 'login_widgets_imports.dart';

class BuildLoginButton extends StatelessWidget {
  final LoginData loginData;

  const BuildLoginButton({Key? key, required this.loginData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoadingButton(
      borderRadius: 8,
        borderColor: MyColors.primary,
        title: tr(context,"login"),
        onTap: ()=>loginData.userLogin(context),
        color: MyColors.primary,
        textColor: MyColors.white,
        btnKey: loginData.btnKey,
        margin: const EdgeInsets.only(top: 40),
        fontSize: 13,
    );
  }
}
