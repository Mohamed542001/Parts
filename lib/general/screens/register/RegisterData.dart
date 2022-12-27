part of 'RegisterImports.dart';

class RegisterDate {
  // blocs
  final GenericBloc<bool> passwordCubit = GenericBloc(false);
  final GenericBloc<bool> termCubit = GenericBloc(false);
  final GenericBloc<File?> imageCubit = GenericBloc(null);

  // keys
  final GlobalKey<CustomButtonState> btnKey = GlobalKey();
  final GlobalKey<FormState> formKey = GlobalKey();

  // controllers
  final TextEditingController to = TextEditingController();
  final TextEditingController from = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  // methods
  Future<void> getImage(BuildContext context) async {
    var image = await HelperMethods.getImage();
    if (image != null) {
      imageCubit.onUpdateData(image);
    }
  }

  void onStartTime(BuildContext context) {
    AdaptivePicker.timePicker(
        context: context,
        onConfirm: (date) {
          from.text = DateFormat("HH:mm").format(date!);
        },
        title: '');
  }

  void onEndTime(BuildContext context) {
    AdaptivePicker.timePicker(
        context: context,
        onConfirm: (date) {
          to.text = DateFormat("HH:mm").format(date!);
        },
        title: '');
  }

  void register(BuildContext context) async {
    AutoRouter.of(context).push(VerifyCodeRoute(email: ''));
    return;
    if (formKey.currentState!.validate()) {
      // check terms & conditions
      btnKey.currentState?.animateForward();
      // add Repo method
      btnKey.currentState?.animateReverse();
      CustomToast.showSimpleToast(msg: "");
    }
  }
}
