part of 'GeneralRepoImports.dart';

class GeneralHttpMethods {
  final BuildContext context;

  FirebaseMessaging messaging = FirebaseMessaging.instance;

  GeneralHttpMethods(this.context);


  Future<bool> userLogin(String phone, String pass) async {
    String? token = await messaging.getToken();
    Map<String, dynamic> body = {
      "phone": phone,
      "password": pass,
      "firebase_token": token,
      "device_id": Platform.isIOS ? "ios" : "android",
    };
    var data = await GenericHttp<dynamic>(context).callApi(
      name: ApiNames.login,
      json: body,
      returnType: ReturnType.type,
      methodType: MethodType.post,
      returnDataFun: (data) => data,
      toJsonFunc: (json) => UserModel.fromJson(json),
      showLoader: false,
    );
    return Utils.manipulateLoginData(context, data, token ?? "");
  }

  Future<List<BoardingModel>> boarding() async {
    var data = await GenericHttp<BoardingModel>(context).callApi(
      name: ApiNames.boarding,
      returnType: ReturnType.list,
      showLoader: false,
      returnDataFun: (json) => json["data"],
      methodType: MethodType.get,
      toJsonFunc: (json) => BoardingModel.fromJson(json),
    );
    return data;
  }

  Future<List<QuestionModel>> frequentQuestions() async {
    return await GenericHttp<QuestionModel>(context).callApi(
            name: ApiNames.repeatedQuestions,
            returnType: ReturnType.list,
            showLoader: false,
            methodType: MethodType.get,
            returnDataFun: (data) => data["data"],
            toJsonFunc: (json) => QuestionModel.fromJson(json))
        as List<QuestionModel>;
  }

  // Future<dynamic> sendCode(String code, String phoneOrEmail) async {
  //   Map<String, dynamic> body = {
  //     "code": code,
  //     "phoneOrEmail": phoneOrEmail,
  //   };
  //   dynamic data = await GenericHttp<dynamic>(context).callApi(
  //     name: ApiNames.sendCode,
  //     json: body,
  //     returnType: ReturnType.Type,
  //     showLoader: false,
  //     methodType: MethodType.Post,
  //     // toJsonFunc: (json) => UserModel.fromJson(json),
  //     returnDataFun: (data) => data,
  //   );
  //   return data;
  // }

  Future<dynamic> sendCode(String code, String phoneOrEmail) async {
    String? _token = await messaging.getToken();
    Map<String, dynamic> body = {
      "code": code,
      "phoneOrEmail": phoneOrEmail,
      "firebase_token": "$_token",
      "device_id": Platform.isIOS ? "ios" : "android",
    };
    dynamic data = await GenericHttp<dynamic>(context).callApi(
      name: ApiNames.sendCode,
      json: body,
      returnType: ReturnType.type,
      showLoader: false,
      methodType: MethodType.post,
      toJsonFunc: (json) => UserModel.fromJson(json),
      returnDataFun: (data)=> data,
    );
    return Utils.manipulateActiveData(context, data, _token ?? "");
  }

  Future<dynamic> resendCode(String phoneOrEmail) async {
    Map<String, dynamic> body = {"phoneOrEmail": phoneOrEmail};
    dynamic data = await GenericHttp<dynamic>(context).callApi(
      name: ApiNames.resendCode,
      json: body,
      returnType: ReturnType.type,
      showLoader: false,
      methodType: MethodType.post,
    );
    return data;
  }

  Future<String?> aboutApp() async {
    return await GenericHttp<String>(context).callApi(
      name: ApiNames.aboutApp,
      returnType: ReturnType.type,
      showLoader: false,
      methodType: MethodType.get,
    );
  }

  Future<String?> terms() async {
    return await GenericHttp<String>(context).callApi(
      name: ApiNames.terms,
      returnType: ReturnType.type,
      showLoader: false,
      methodType: MethodType.get,
      returnDataFun: (json) => json["data"]["terms"],
    );
  }

  Future<bool> switchNotify() async {
    dynamic data = await GenericHttp<dynamic>(context).callApi(
      name: ApiNames.switchNotify,
      returnType: ReturnType.type,
      showLoader: false,
      methodType: MethodType.post,
    );
    return (data != null);
  }

  Future<dynamic> forgetPassword(String phone) async {
    Map<String, dynamic> body = {
      "phoneOrEmail": "$phone",
    };
    dynamic data = await GenericHttp<dynamic>(context).callApi(
      name: ApiNames.forgetPassword,
      returnType: ReturnType.type,
      json: body,
      showLoader: false,
      methodType: MethodType.post,
      returnDataFun: (data)=> data,
    );
    return data;
  }

  Future<dynamic> resetUserPassword(String phoneOrEmail, String newPassword, String confirmationPassword) async {
    Map<String, dynamic> body = {
      "phoneOrEmail": phoneOrEmail,
      "new_password": newPassword,
      "confirmation_password": confirmationPassword,
    };
    dynamic data = await GenericHttp<dynamic>(context).callApi(
      name: ApiNames.resetPassword,
      returnType: ReturnType.type,
      json: body,
      showLoader: false,
      methodType: MethodType.post,
    );
    return data;
  }

  Future<bool> sendMessage(String? name, String? mail, String? message) async {
    Map<String, dynamic> body = {
      "name": "$name",
      "email": "$mail",
      "comment": "$message",
    };
    dynamic data = await GenericHttp<dynamic>(context).callApi(
      name: ApiNames.contactUs,
      returnType: ReturnType.type,
      json: body,
      showLoader: false,
      methodType: MethodType.post,
    );
    return (data != null);
  }

  Future<void> logOut() async {
    LoadingDialog.showLoadingDialog();
    String? deviceId = await Storage.getDeviceId();
    Map<String, dynamic> body = {"firebase_token": deviceId};
     await GenericHttp<dynamic>(context).callApi(
      name: ApiNames.logOut,
      json: body,
      returnType: ReturnType.type,
      showLoader: false,
      methodType: MethodType.post,
    );
    EasyLoading.dismiss().then((value) {
      Storage.clearUserData();
      Phoenix.rebirth(context);
    });
  }
}
