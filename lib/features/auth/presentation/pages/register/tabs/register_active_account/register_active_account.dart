part of'register_active_account_imports.dart';

class RegisterActiveAccount extends StatefulWidget {
  final RegisterController controller;
  const RegisterActiveAccount({Key? key,required this.controller}) : super(key: key);

  @override
  _RegisterActiveAccountState createState() => _RegisterActiveAccountState();
}

class _RegisterActiveAccountState extends State<RegisterActiveAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: BuildAuthAppBar(title: "Let's verify your mobile",onBack: ()=>widget.controller.goBack(),),
      body: ListView(
        // padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        children: [
          LinearProgressIndicator(value: 1,color: MyColors.infoColor,backgroundColor: MyColors.grey.withOpacity(.2),),
          const SizedBox(height: 20,),
          HeaderText(),
          BuildPinField(
            onComplete: widget.controller.onComplete,
          ),
          RegisterActiveAccountButton(controller: widget.controller),
        ],
      ),
    );
  }
}
