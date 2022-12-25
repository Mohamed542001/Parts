part of 'ResetPasswordImports.dart';

class ResetPasswordData {
  // keys
  GlobalKey<FormState> formKey = GlobalKey();

  // controllers
  TextEditingController code = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  GlobalKey<CustomButtonState> btnKey = GlobalKey();

  // methods
  void onResetPassword(BuildContext context, String phone) async {
    AutoRouter.of(context).pushAndPopUntil(const LoginRoute(), predicate: (_)=>false);
    return;
    FocusScope.of(context).requestFocus(FocusNode());
    if (formKey.currentState!.validate()) {
      btnKey.currentState!.animateForward();
      var data = await GeneralRepository(context).resetUserPassword(phone, password.text, password.text);
      btnKey.currentState!.animateReverse();
      CustomToast.showSimpleToast(msg: data["msg"]);
    }
  }
}
