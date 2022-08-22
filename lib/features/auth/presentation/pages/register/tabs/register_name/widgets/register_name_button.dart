part of 'register_name_widgets_imports.dart';

class RegisterNameButton extends StatelessWidget {
  final RegisterController controller;

  const RegisterNameButton({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<RegisterParams>, GenericState<RegisterParams>>(
      bloc: controller.registerBloc,
      builder: (context, state) {
        bool isEmpty = state.data.nikeName.isEmpty||state.data.email.isEmpty||state.data.phone.isEmpty;
        return AbsorbPointer(
          absorbing: isEmpty,
          child: DefaultButton(
            title: "Next",
            onTap: () => controller.goNext(),
            color: isEmpty ? MyColors.offWhite : MyColors.primary,
            textColor: isEmpty ? MyColors.black : MyColors.white,
            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
            fontSize: 16,),
        );
      },
    );
  }
}
