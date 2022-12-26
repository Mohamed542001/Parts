part of 'TermsImports.dart';

class TermsData {
  // keys
  GlobalKey<ScaffoldState> scaffold = GlobalKey<ScaffoldState>();

  // blocs
  final GenericBloc<String> termsCubit = GenericBloc("");

  // methods
  void fetchData(BuildContext context)async {
    var data = await GeneralRepository(context).terms();
    termsCubit.onUpdateData("$data");
  }

}
