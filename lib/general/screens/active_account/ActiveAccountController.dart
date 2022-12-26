part of 'ActiveAccountImports.dart';

class ActiveAccountController {
  // keys
  final GlobalKey<CustomButtonState> btnKey = GlobalKey();

  // variables
  String? code;

  // blocs
  final GenericBloc<bool> codeCubit = GenericBloc(false);

  // methods
  void onComplete(String value){
    codeCubit.onUpdateData(value.length==6);
    code = value;
  }

}