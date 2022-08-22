part of'register_active_account_widgets_imports.dart';

class RegisterActiveAccountButton extends StatelessWidget {
  final RegisterController controller;
  const RegisterActiveAccountButton({required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
      bloc: controller.codeCubit,
      builder: (context, state) {
        return AbsorbPointer(
          absorbing: !state.data,
          child: LoadingButton(
              title: "Next",
              onTap: () {},
              color: !state.data? MyColors.offWhite:MyColors.primary,
              textColor: !state.data? MyColors.black:MyColors.white,
              btnKey: controller.btnKey,
              margin: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
              fontSize: 16,
              height: 55
          ),
        );
      },
    );
  }
}
