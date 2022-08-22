part of'register_phone_widgets_imports.dart';

class RegisterPhoneButton extends StatelessWidget {
  final RegisterController controller;
  const RegisterPhoneButton({Key? key,required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<RegisterParams>, GenericState<RegisterParams>>(
      bloc: controller.registerBloc,
      builder: (context, state) {
        bool isEmpty = state.data.phone.isEmpty || state.data.password.isEmpty;
        return AbsorbPointer(
          absorbing: isEmpty,
          child: DefaultButton(
            title: "Next",
            onTap: () => controller.goNext(),
            color: isEmpty? MyColors.offWhite:MyColors.primary,
            textColor: isEmpty? MyColors.black:MyColors.white,
            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            fontSize: 16,
          ),
        );
      },
    );
  }
}
