part of 'SplashImports.dart';

class Splash extends StatefulWidget {
  final GlobalKey<NavigatorState> navigatorKey;

  const Splash({required this.navigatorKey});

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  final SplashController controller = SplashController();

  @override
  void initState() {
    controller.checkingData(context);
    super.initState();
  }

  @override
  void didChangeDependencies() {
    precacheImage(const AssetImage(Res.logo), context);
    precacheImage(const AssetImage(Res.onboardingOne), context);
    precacheImage(const AssetImage(Res.onboardingTwo), context);
    precacheImage(const AssetImage(Res.onboardingTwo), context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Res.onboardingOne),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: AnimationContainer(
            index: 0,
            vertical: true,
            duration: const Duration(milliseconds: 800),
            distance: MediaQuery.of(context).size.height * .3,
            child: Hero(
              tag: Res.logo,
              child: Image.asset(
                Res.logo,
                width: 250,
                height: 250,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
