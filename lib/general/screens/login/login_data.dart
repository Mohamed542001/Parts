part of 'login_imports.dart';

class LoginData {
  final GlobalKey<FormState> formKey = GlobalKey();
  final GlobalKey<CustomButtonState> btnKey = GlobalKey();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController student = TextEditingController();
  final GenericBloc<bool> passwordCubit = GenericBloc(false);

  void userLogin(BuildContext context) async {
    FocusScope.of(context).requestFocus(FocusNode());
    if (formKey.currentState!.validate()) {
      btnKey.currentState!.animateForward();
      String phoneEn = HelperMethods.convertDigitsToLatin(email.text);
      String passEn = HelperMethods.convertDigitsToLatin(password.text);
      await GeneralRepository(context).setUserLogin(phoneEn, passEn);
      btnKey.currentState!.animateReverse();
    }
  }
}
