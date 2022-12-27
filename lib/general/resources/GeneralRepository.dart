part of 'GeneralRepoImports.dart';

class GeneralRepository {
  late BuildContext _context;
  late GeneralHttpMethods _generalHttpMethods;

  GeneralRepository(BuildContext context) {
    _context = context;
    _generalHttpMethods =  GeneralHttpMethods(_context);
  }


  // setting
  Future<SettingModel> getAppSetting()=>_generalHttpMethods.getAppSetting();


  Future<List<DropdownModel>> getUserTypes()=>_generalHttpMethods.getUserTypes();

  Future<bool> setUserLogin(String phone, String pass) =>
      _generalHttpMethods.userLogin(phone, pass);

  Future<List<BoardingModel>> boarding() => _generalHttpMethods.boarding();

  Future<dynamic> sendCode(String code, String userId) =>
      _generalHttpMethods.sendCode(code, userId);

  Future<dynamic> resendCode(String userId) =>
      _generalHttpMethods.resendCode(userId);

  Future<String?> aboutApp() => _generalHttpMethods.aboutApp();

  Future<String?> terms() => _generalHttpMethods.terms();

  Future<bool> switchNotify() => _generalHttpMethods.switchNotify();

  Future<dynamic> forgetPassword(String phone) =>
      _generalHttpMethods.forgetPassword(phone);

  Future<dynamic> resetUserPassword(String phoneOrEmail, String newPassword,
          String confirmationPassword) =>
      _generalHttpMethods.resetUserPassword(
          phoneOrEmail, newPassword, confirmationPassword);

  Future<List<QuestionModel>> frequentQuestions() =>
      _generalHttpMethods.frequentQuestions();

  Future<bool> sendMessage({String? name, String? mail, String? message}) =>
      _generalHttpMethods.sendMessage(name, mail, message);

  Future<void> logOut() => _generalHttpMethods.logOut();
}
