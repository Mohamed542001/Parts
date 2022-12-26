part of 'RegisterImports.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  RegisterDate registerDate = RegisterDate();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
      appBar: const BuildAuthAppBar(haveLeading: true),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const HeaderLogo(),
              const BuildHeaderTitle(title:"Create Account"),
              BuildRegisterFields(registerDate: registerDate),
              BuildUploadImage(registerDate: registerDate),
              BuildTermsAndPolicy(registerDate: registerDate),
              BuildRegisterButton(registerDate: registerDate),
            ],
          ),
        ),
      ),
    );
  }
}
