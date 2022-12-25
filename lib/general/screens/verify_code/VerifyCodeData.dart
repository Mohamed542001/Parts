part of 'VerifyCodeImports.dart';

class VerifyCodeData {
  // variables
  String? code;

  // blocs
  final GenericBloc<bool> codeCubit = GenericBloc(false);

  // keys
  GlobalKey<CustomButtonState> btnKey = GlobalKey();
  GlobalKey<FormState> formKey = GlobalKey();
  GenericBloc<String> timeCubit = GenericBloc("0");

  // methods

  void onComplete(String value) {
    codeCubit.onUpdateData(value.length == 4);
    code = value;
  }

  void onActiveAccount(BuildContext context, String phoneOrEmail) async {
    if (formKey.currentState!.validate()) {
      if (code!.trim().isEmpty) {
        CustomToast.showSimpleToast(msg: "Please Enter Code");
        return;
      }
      btnKey.currentState!.animateForward();
      var data =
          await GeneralRepository(context).sendCode(code ?? "", phoneOrEmail);
      btnKey.currentState!.animateReverse();
      // route to home
    }
  }

  void onResendCode(BuildContext context, String phoneOrEmail) async {
    await GeneralRepository(context).resendCode(phoneOrEmail);
  }
}
