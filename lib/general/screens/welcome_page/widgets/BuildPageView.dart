part of 'WelcomeWidgetImports.dart';

class BuildPageView extends StatelessWidget {
  final WelcomeEntity model;

  const BuildPageView({Key? key,required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage(model.image??""),fit: BoxFit.fill)),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            const Spacer(),
            Container(
              padding: const EdgeInsets.only(bottom: 20),
              child: MyText(
                title: model.title??"",
                size: 24,
                color: MyColors.white,
                alien: TextAlign.center,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 30),
              child: MyText(
                title: model.desc??"",
                size: 18,
                color: MyColors.greyWhite,
                alien: TextAlign.center,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child:GestureDetector(
                    onTap: ()=>AutoRouter.of(context).push(const SelectUserRoute()),
                    child: MyText(
                      title:(model.index! == 2)? "ابدء":"تخطي",
                      size: 18,
                      color: MyColors.white,
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () => model.last
                        ? AutoRouter.of(context).push(const SelectUserRoute())
                        : model.pageCubit?.onUpdateData(model.index! + 1),
                    child: Container(
                      margin: const EdgeInsets.all(17),
                      child:  CircleProgressBar(
                        foregroundColor: MyColors.primary,
                        backgroundColor: Colors.transparent,
                        value: (model.index! + 1)*.333,
                        strokeWidth: 2.5,
                        child:Container(
                            margin: const EdgeInsets.all(8),
                            padding: const EdgeInsetsDirectional.only(start: 7),
                            decoration: BoxDecoration(
                              color: MyColors.primary,
                              borderRadius: BorderRadius.circular(150),
                            ),
                            alignment: Alignment.center,
                            child:  Icon(
                              Icons.arrow_back_ios,
                              size: 25,
                              color: MyColors.white,
                            )
                        )
                      )
                    ),
                  ),
                ),
                Expanded(child: Container()),
              ],
            )
          ],
        ),
      ),
    );
  }

}
