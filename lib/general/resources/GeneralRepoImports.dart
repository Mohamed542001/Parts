import 'dart:io';

import 'package:hwzn_base/general/helper/dio/http/GenericHttp.dart';
import 'package:hwzn_base/general/helper/storage/Storage.dart';
import 'package:hwzn_base/general/models/QuestionModel.dart';
import 'package:hwzn_base/general/models/UserModel.dart';
import 'package:hwzn_base/general/models/boarding_model.dart';
import 'package:hwzn_base/general/utilities/utils_functions/ApiNames.dart';
import 'package:hwzn_base/general/utilities/utils_functions/LoadingDialog.dart';
import 'package:hwzn_base/general/utilities/utils_functions/UtilsImports.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';

part 'GeneralHttpMethods.dart';
part 'GeneralRepository.dart';