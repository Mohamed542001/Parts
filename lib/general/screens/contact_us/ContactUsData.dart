part of 'ContactUsImports.dart';

class ContactUsData{

  final LocationCubit locationCubit = LocationCubit();
  final TextEditingController address =  TextEditingController();

  void onLocationClick(BuildContext context)async{
    var loc = await MapMethods.getCurrentLocation(context);
    locationCubit.onLocationUpdated(LocationModel(
      lat: loc?.latitude ?? 24.774265,
      lng: loc?.longitude ?? 46.738586,
      address: "",
    ));
    Navigator.of(context).push(CupertinoPageRoute(builder: (cxt)=> BlocProvider.value(
      value: locationCubit,
      child: LocationAddress(),
    )));
  }

}