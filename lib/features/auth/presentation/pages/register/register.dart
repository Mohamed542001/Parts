part of 'register_imports.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final RegisterController controller = RegisterController();
  @override
  void initState() {
    controller.pageController=PageController(initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: PageView(
        scrollDirection: Axis.horizontal,
        children: [
          RegisterName(controller: controller),
          RegisterPhone(controller: controller,),
          RegisterActiveAccount(controller: controller),
        ],
        controller: controller.pageController,
      ),
    );
  }
}
