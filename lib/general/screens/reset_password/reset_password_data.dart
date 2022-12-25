part of 'reset_password_imports.dart';

class ResetPasswordData {
  GlobalKey<FormState> formKey = GlobalKey();

  TextEditingController code = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  GlobalKey<CustomButtonState> btnKey = GlobalKey();

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
