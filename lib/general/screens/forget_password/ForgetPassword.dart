part of 'ForgetPasswordImports.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final ForgetPasswordData forgetPasswordData = ForgetPasswordData();

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
      appBar: const BuildAuthAppBar(haveLeading: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const HeaderLogo(),
            const BuildHeaderTitle(title:"نسيت كلمه المرور ؟"),
            BuildForgetForm(forgetPasswordData: forgetPasswordData),
            BuildForgetPasswordButton(forgetPasswordData: forgetPasswordData),
          ],
        ),
      ),
    );
  }
}
