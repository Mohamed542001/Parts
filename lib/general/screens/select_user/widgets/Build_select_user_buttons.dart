part of 'build_select_user_widgets_imports.dart';

class BuildSelectUserButtons extends StatelessWidget {
  final SelectUserData selectUserData;

  const BuildSelectUserButtons({Key? key, required this.selectUserData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var user = context.read<UserCubit>().state.model;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          LoadingButton(
              borderRadius: 8,
              title: "مدير",
              onTap: () {
                context.read<UserCubit>().onUpdateUserData(UserModel(data: CustomerModel()));
                AutoRouter.of(context).push(const LoginRoute());
              },
              color: MyColors.primary,
              textColor: MyColors.white,
              btnKey: selectUserData.btnKey1,
              margin: const EdgeInsets.symmetric(vertical: 10),
              fontSize: 14),
          LoadingButton(
              borderRadius: 8,
              title:"موظف",
              onTap: () {
                context
                    .read<UserCubit>()
                    .onUpdateUserData(UserModel());
                AutoRouter.of(context).push(const LoginRoute());
              },
              color: MyColors.primary,
              textColor: MyColors.white,
              btnKey: selectUserData.btnKey2,
              margin: const EdgeInsets.symmetric(vertical: 10),
              fontSize: 14),
        ],
      ),
    );
  }
}
