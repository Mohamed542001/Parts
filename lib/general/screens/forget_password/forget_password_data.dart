part of'forget_password_imports.dart';

class ForgetPasswordData{
  GlobalKey<FormState> formKey = GlobalKey();
  GlobalKey<CustomButtonState> btnKey = GlobalKey();
  TextEditingController email = TextEditingController();

  final GenericBloc<String> phoneCubit = GenericBloc("");

  void resetPassword(BuildContext context)async{
     AutoRouter.of(context).push(ResetPasswordRoute(email: "", code: ""));
     return;
    if(formKey.currentState!.validate()){
      btnKey.currentState!.animateForward();
      var result = await GeneralRepository(context).forgetPassword(email.text);
      btnKey.currentState!.animateReverse();
      if(result!=null){
        //  route to reset password
      }
    }
  }
}