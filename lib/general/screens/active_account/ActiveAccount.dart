part of 'ActiveAccountImports.dart';

class ActiveAccount extends StatefulWidget {
  final String email;
  final String code;

  const ActiveAccount({Key? key, required this.email, required this.code})
      : super(key: key);

  @override
  _ActiveAccountState createState() => _ActiveAccountState();
}

class _ActiveAccountState extends State<ActiveAccount> {
  final ActiveAccountController controller = ActiveAccountController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
      appBar: const BuildAuthAppBar(haveLeading: true),
      showLogo: false,
      title: "Enter Code",
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        children: [
          BuildPinField(onComplete: controller.onComplete),
          BuildActiveButton(controller: controller),
        ],
      ),
    );
  }
}
