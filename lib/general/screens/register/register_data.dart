part of 'register_imports.dart';

class RegisterDate {
  final GenericBloc<bool> passwordCubit = GenericBloc(false);
  final GenericBloc<bool> termCubit = GenericBloc(false);

  final GenericBloc<File?> imageCubit = GenericBloc(null);

  final GlobalKey<CustomButtonState> btnKey = GlobalKey();
  final GlobalKey<FormState> formKey = GlobalKey();
  final TextEditingController to = TextEditingController();
  final TextEditingController from = TextEditingController();

  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController additionalPhoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


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
    if (formKey.currentState!.validate()) {
      btnKey.currentState!.animateForward();
      // add Repo method
      btnKey.currentState?.animateReverse();
      CustomToast.showSimpleToast(msg: "");
    }
  }
}
