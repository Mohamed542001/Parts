part of 'VerifyCodeWidgetsImports.dart';

class BuildVerifyButton extends StatelessWidget {
  final VerifyCodeData verifyCodeData;
  final String email;
  final StopWatchTimer stopWatchTimer;

  const BuildVerifyButton(
      {Key? key,
      required this.verifyCodeData,
      required this.email,
      required this.stopWatchTimer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LoadingButton(
            borderRadius: 8,
            borderColor: MyColors.primary,
            title:"Send",
            onTap: () => verifyCodeData.onActiveAccount(context, email),
            color: MyColors.primary,
            textColor: MyColors.white,
            btnKey: verifyCodeData.btnKey,
            margin: const EdgeInsets.only(top: 40),
            fontSize: 14),
        BlocBuilder<GenericBloc<String>, GenericState<String>>(
            bloc: verifyCodeData.timeCubit,
            builder: (context, state) {
                if(stopWatchTimer.isRunning){
                  return Container(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 50),
                    child: MyText(
                      title: "Resend Code After ${state.data} secend",
                      color: MyColors.black,
                      size: 13,
                      decoration: TextDecoration.underline,
                    ),
                  );
                }else{
                 return GestureDetector(
                    onTap: () {
                      verifyCodeData.onResendCode(context, email);
                    },
                    child: Container(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 50),
                      child: MyText(
                        title:"Resend Code",
                        color: MyColors.black,
                        size: 13,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  );
                }
            })
      ],
    );
  }
}
