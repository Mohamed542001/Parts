part of 'register_phone_imports.dart';

class RegisterPhone extends StatefulWidget {
  final RegisterController controller;

  const RegisterPhone({Key? key, required this.controller}) : super(key: key);

  @override
  _RegisterPhoneState createState() => _RegisterPhoneState();
}

class _RegisterPhoneState extends State<RegisterPhone> {
  @override
  Widget build(BuildContext context) {
    final name = widget.controller.nikeName.text.split(" ").first;
    return Scaffold(
      appBar: BuildAuthAppBar(
        title: "Hello, $name",
        onBack: () => widget.controller.goBack(),
      ),
      body: ListView(
        children: [
          LinearProgressIndicator(
            value: .66,
            color: MyColors.infoColor,
            backgroundColor: MyColors.grey.withOpacity(.2),
          ),
          RegisterPhoneForm(controller: widget.controller),
          BuildTermsView(controller: widget.controller),
          RegisterPhoneButton(controller: widget.controller)
        ],
      ),
    );
  }
}
