part of 'ContactUsImports.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {

  final ContactUsData contactUsData = ContactUsData();


  @override
  Widget build(BuildContext context) {

    var about = context.read<SettingCubit>().state.model.about;
    return AuthScaffold(
        appBar: const DefaultAppBar(title: 'تواصل معنا'),
        showTitle: false,
        showLogo: true,
        body:Column(
          children: [
            BuildContactUsInputs(contactUsData: contactUsData),
            const SizedBox(height: 20),
            BuildSocial(contactUsData: contactUsData),
          ],
        )
    );
  }
}
