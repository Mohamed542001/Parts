part of'register_phone_widgets_imports.dart';
class RegisterPhoneForm extends StatelessWidget {
  final RegisterController controller;
  const RegisterPhoneForm({Key? key,required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child: Form(
        key: controller.phoneFormKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyText(title: "Let's setup your account", color: MyColors.black, size: 18),
            GenericTextField(
              fieldTypes: FieldTypes.normal,
              type: TextInputType.text,
              action: TextInputAction.next,
              controller: controller.fullName,
              validate: (value) => value?.validateEmpty(),
              label: "Full Name",
              margin: EdgeInsets.only(top: 20),
              prefixIcon: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset(Res.mobile),
              ),
               onChange: controller.onChangeFullName,
            ),
            GenericTextField(
              fieldTypes: FieldTypes.password,
              type: TextInputType.text,
              action: TextInputAction.done,
              validate: (value) => value?.validatePassword(),
              label: "Password",
              controller: controller.password,
              margin: EdgeInsets.only(top: 20),
              prefixIcon: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset(Res.password),
              ), onChange: controller.onChangePassword,
            ),
          ],
        ),
      ),
    );
  }
}
