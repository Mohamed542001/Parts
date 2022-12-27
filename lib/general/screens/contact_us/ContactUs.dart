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
    return AuthScaffold(
        appBar: const BuildAuthAppBar(haveLeading: true),
        title: "تواصل معنا",
        body:Column(
          children: [
            BuildContactUsInputs(contactUsData: contactUsData),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              child: const BuildSocial(),
            ),
            LoadingButton(
              margin: const EdgeInsets.symmetric(vertical: 5),
              title: tr(context, "send"),
              onTap: () => contactUsData.addContactUs(context),
              btnKey: contactUsData.btnKey,
            ),
          ],
        )
    );
  }
}
