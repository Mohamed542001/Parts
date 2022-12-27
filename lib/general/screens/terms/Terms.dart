part of 'TermsImports.dart';


class Terms extends StatefulWidget {
  const Terms({Key? key}) : super(key: key);

  @override
  _TermsState createState() => _TermsState();
}

class _TermsState extends State<Terms> with TermsData {


  @override
  Widget build(BuildContext context) {
    var terms = context.read<SettingCubit>().state.model.terms;
    return AuthScaffold(
      appBar: DefaultAppBar(title: tr(context, "terms")),
      showTitle: false,
      body: BuildTermsView(text: terms??"")
    );
  }
}
