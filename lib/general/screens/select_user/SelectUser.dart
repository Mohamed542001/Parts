part of 'SelectUserImports.dart';

class SelectUser extends StatefulWidget {
  const SelectUser({Key? key}) : super(key: key);

  @override
  State<SelectUser> createState() => _SelectUserState();
}

class _SelectUserState extends State<SelectUser> {
  SelectUserData selectUserData = SelectUserData();

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Expanded(child: HeaderLogo()),
            BuildSelectUserText(),
            Expanded(
              child: BuildSelectUserButtons(
                selectUserData: selectUserData,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
