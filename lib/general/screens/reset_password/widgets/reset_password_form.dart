part of'reset_password_widgets_imports.dart';

class ResetPasswordForm extends StatelessWidget {
  final ResetPasswordData resetPasswordData;
  const ResetPasswordForm({Key? key,required this.resetPasswordData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: resetPasswordData.formKey,
      child: Column(
        children: [
          GenericTextField(
            contentPadding: const EdgeInsets.symmetric(vertical: 10,horizontal: 16),
            fieldTypes: FieldTypes.normal,
            type: TextInputType.text,
            action: TextInputAction.next,
            controller: resetPasswordData.code,
            validate: (value) => value?.validateEmpty(context),
            label:"كود التحقيق ",
            margin: const EdgeInsets.only(top: 20),

          ),
          GenericTextField(
            contentPadding: const EdgeInsets.symmetric(vertical: 10,horizontal: 16),
            fieldTypes: FieldTypes.password,
            type: TextInputType.text,
            action: TextInputAction.next,
            controller: resetPasswordData.password,
            validate: (value) => value?.validatePassword(context),
            label:"كلمه المرور ",
            margin: const EdgeInsets.only(top: 20),


          ),
          GenericTextField(
            contentPadding: const EdgeInsets.symmetric(vertical: 10,horizontal: 16),
            fieldTypes: FieldTypes.password,
            type: TextInputType.text,
            action: TextInputAction.done,
            validate: (value) => value?.validatePasswordConfirm(context,pass: resetPasswordData.password.text),
            label: "تاكيد كلمه المرور",
            margin: const EdgeInsets.only(top: 20),
            controller: resetPasswordData.confirmPassword,

          ),
        ],
      ),
    );
  }
}
