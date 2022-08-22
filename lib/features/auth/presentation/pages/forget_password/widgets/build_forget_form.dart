part of'forget_password_widgets_imports.dart';

class BuildForgetForm extends StatelessWidget {
  final ForgetPasswordController controller;
  const BuildForgetForm({Key? key,required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: GenericTextField(
        fieldTypes: FieldTypes.normal,
        type: TextInputType.phone,
        action: TextInputAction.next,
        validate: (value) => value?.validatePhone(),
        label: "Phone Number",
        prefixIcon: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SvgPicture.asset(Res.mobile),
        ),
        onChange: controller.onChangePhone,
      ),
    );
  }
}
