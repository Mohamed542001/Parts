part of'register_name_imports.dart';

class RegisterName extends StatefulWidget {
  final RegisterController controller;
  const RegisterName({Key? key,required this.controller});

  @override
  _RegisterNameState createState() => _RegisterNameState();
}

class _RegisterNameState extends State<RegisterName> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAuthAppBar(title: "Welcome",),
      body: ListView(
        children: [
          LinearProgressIndicator(value: .33,color: MyColors.infoColor,backgroundColor: MyColors.grey.withOpacity(.2),),
          RegisterNameBody(controller: widget.controller,),
          RegisterNameButton(controller: widget.controller,),
        ],
      ),
    );
  }
}
