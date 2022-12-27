part of 'WelcomePageImports.dart';

class WelcomePageData {
  // blocs
  final GenericBloc<int> pagesCubit = GenericBloc(0);

  // variables
  List<Widget> data = [];

  void initPagesData(BuildContext context) {
    var pages = context.read<SettingCubit>().state.model.onboardPages;
    if(pages!=null){
      pages.reversed;
      data = List.generate(pages.length, (index) => BuildPageView(
      key:  Key("$index"),
      model: WelcomeEntity(
          title: pages[index].title,
          desc:pages[index].desc,
          image: pages[index].image,
          index: index,
          last: index == pages.length-1,
          pageCubit: pagesCubit),
    ));
      return;
    }
    data = [
      BuildPageView(
        key: const Key("1"),
        model: WelcomeEntity(
            title: "العالم بين يديك",
            desc:
                " العالم بين يديك في مجمع الراشد ينبغي ان تحصل على يوم لا ينسى ",
            image: Res.onboardingOne,
            index: 0,
            pageCubit: pagesCubit),
      ),
      BuildPageView(
        key: const Key("2"),
        model: WelcomeEntity(
            title: "العالم بين يديك",
            desc:
                " العالم بين يديك في مجمع الراشد ينبغي ان تحصل على يوم لا ينسى ",
            image: Res.onboardingTwo,
            index: 1,
            pageCubit: pagesCubit),
      ),
      BuildPageView(
        key: const Key("3"),
        model: WelcomeEntity(
            title: "العالم بين يديك",
            desc:
                " العالم بين يديك في مجمع الراشد ينبغي ان تحصل على يوم لا ينسى ",
            image: Res.onboardingThree,
            last: true,
            index: 2,
            pageCubit: pagesCubit),
      ),
    ];
  }
}
