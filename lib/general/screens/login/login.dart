part of 'login_imports.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final LoginData loginData = LoginData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: const BuildAuthAppBar(
        haveLeading: true,
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const BuildHeaderLogo(),
              const BuildTitle(),
              BuildLoginForm(loginData: loginData),
              BuildLoginButton(loginData: loginData),
              const BuildForgetPasswordView(),
              const BuildSocial(),
              const BuildDontHaveAccount()
            ],
          ),
        ),
      ),
    );
  }
}
