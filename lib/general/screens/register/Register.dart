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
      title: "Create Account",
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
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
