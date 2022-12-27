part of 'VerifyCodeImports.dart';

class VerifyCode extends StatefulWidget {
  final String email;

  const VerifyCode({Key? key, required this.email}) : super(key: key);

  @override
  _VerifyCodeState createState() => _VerifyCodeState();
}

class _VerifyCodeState extends State<VerifyCode> {
  final VerifyCodeData verifyCodeData = VerifyCodeData();
  @override
  void initState() {
    verifyCodeData.handleStopWatchConfig();
    super.initState();
  }

  @override
  void dispose() async {
    super.dispose();
    await verifyCodeData.stopWatchTimer?.dispose(); // Need to call dispose function.
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: AuthScaffold(
        appBar: const BuildAuthAppBar(),
        title: "اضافه كود التحقيق",
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                BuildCodeField(verifyCodeData: verifyCodeData),
                BuildVerifyButton(
                    verifyCodeData: verifyCodeData,
                    email: widget.email,
                    stopWatchTimer: verifyCodeData.stopWatchTimer!)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
