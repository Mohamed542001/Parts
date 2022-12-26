part of 'ContactUsImports.dart';

class ContactUsData {
  // blocs
  final LocationCubit locationCubit = LocationCubit();

  // controllers
  final TextEditingController address = TextEditingController();

  // methods
  void onLocationClick(BuildContext context) async {
    var loc = await MapMethods.getCurrentLocation(context);
    locationCubit.onLocationUpdated(LocationModel(
      lat: loc?.latitude ?? 24.774265,
      lng: loc?.longitude ?? 46.738586,
      address: "",
    ));
    Navigator.of(context).push(
      CupertinoPageRoute(
        builder: (cxt) => BlocProvider.value(
          value: locationCubit,
          child: LocationAddress(),
        ),
      ),
    );
  }
}
